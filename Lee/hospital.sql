use hospital2;
ALTER TABLE hospital2.h2019 CHANGE `시도별(1)` 시도별 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;
ALTER TABLE hospital2.h2013 CHANGE `시도별(1)` 시도별 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;
ALTER TABLE hospital2.h2015 CHANGE `시도별(1)` 시도별 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;
ALTER TABLE hospital2.h2017 CHANGE `시도별(1)` 시도별 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;
ALTER TABLE hospital2.h2021 CHANGE `시도별(1)` 시도별 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;
ALTER TABLE hospital2.h2023 CHANGE `시도별(1)` 시도별 varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL;

select * from h2013

# ==================== 산부인과 ==================== 
select tb23.시도별,
	tb13.산부인과 as "2013", tb15.산부인과 as "2015",
	tb17.산부인과 as "2017", tb19.산부인과 as "2019",
	tb21.산부인과 as "2021", tb23.산부인과 as "2023"
from h2023 as tb23
	inner join (select 시도별, 산부인과
	from h2021) as tb21
	on tb23.시도별 = tb21.시도별
	inner join (select 시도별, 산부인과
	from h2019) as tb19
	on tb23.시도별 = tb19.시도별
	inner join (select 시도별, 산부인과
	from h2017) as tb17
	on tb23.시도별 = tb17.시도별
	inner join (select 시도별, 산부인과
	from h2015) as tb15
	on tb23.시도별 = tb15.시도별
	inner join (select 시도별, 산부인과
	from h2013) as tb13
	on tb23.시도별 = tb13.시도별;


# ==================== 소아청소년과 ==================== 
select tb23.시도별,
	tb13.소아청소년과 as "2013", tb15.소아청소년과 as "2015",
	tb17.소아청소년과 as "2017", tb19.소아청소년과 as "2019",
	tb21.소아청소년과 as "2021", tb23.소아청소년과 as "2023"
from h2023 as tb23
	inner join (select 시도별, 소아청소년과
	from h2021) as tb21
	on tb23.시도별 = tb21.시도별
	inner join (select 시도별, 소아청소년과
	from h2019) as tb19
	on tb23.시도별 = tb19.시도별
	inner join (select 시도별, 소아청소년과
	from h2017) as tb17
	on tb23.시도별 = tb17.시도별
	inner join (select 시도별, 소아청소년과
	from h2015) as tb15
	on tb23.시도별 = tb15.시도별
	inner join (select 시도별, 소아청소년과
	from h2013) as tb13
	on tb23.시도별 = tb13.시도별;
	
# ==================== 정신건강의학과 ==================== 
# ["내과", "외과", "산부인과", "소아청소년과"]
select tb23.시도별,
	tb13.정신건강의학과 as "2013", tb15.정신건강의학과 as "2015",
	tb17.정신건강의학과 as "2017", tb19.정신건강의학과 as "2019",
	tb21.정신건강의학과 as "2021", tb23.정신건강의학과 as "2023"
from h2023 as tb23
	inner join (select 시도별, 정신건강의학과
	from h2021) as tb21
	on tb23.시도별 = tb21.시도별
	inner join (select 시도별, 정신건강의학과
	from h2019) as tb19
	on tb23.시도별 = tb19.시도별
	inner join (select 시도별, 정신건강의학과
	from h2017) as tb17
	on tb23.시도별 = tb17.시도별
	inner join (select 시도별, 정신건강의학과
	from h2015) as tb15
	on tb23.시도별 = tb15.시도별
	inner join (select 시도별, 정신건강의학과
	from h2013) as tb13
	on tb23.시도별 = tb13.시도별
where tb23.시도별 = "서울특별시 ";


select tb23.시도별,
                tb13.소아청소년과 as "2013", tb15.소아청소년과 as "2015",
            	tb17.소아청소년과 as "2017", tb19.소아청소년과 as "2019",
            	tb21.소아청소년과 as "2021", tb23.소아청소년과 as "2023"
                from h2023 as tb23
            	inner join (select 시도별, 소아청소년과
            	from h2021) as tb21
            	on tb23.시도별 = tb21.시도별
            	inner join (select 시도별, 소아청소년과
            	from h2019) as tb19
            	on tb23.시도별 = tb19.시도별
            	inner join (select 시도별, 소아청소년과
            	from h2017) as tb17
            	on tb23.시도별 = tb17.시도별
            	inner join (select 시도별, 소아청소년과
            	from h2015) as tb15
            	on tb23.시도별 = tb15.시도별
            	inner join (select 시도별, 소아청소년과
            	from h2013) as tb13
            	on tb23.시도별 = tb13.시도별
                where tb23.시도별 = "경기도";

ALTER TABLE hospital2.h2013 ADD CONSTRAINT h2013_ref_table_FK FOREIGN KEY (시도별) REFERENCES hospital2.ref_table(시도별);
ALTER TABLE hospital2.h2015 ADD CONSTRAINT h2015_ref_table_FK FOREIGN KEY (시도별) REFERENCES hospital2.ref_table(시도별);
ALTER TABLE hospital2.h2017 ADD CONSTRAINT h2017_ref_table_FK FOREIGN KEY (시도별) REFERENCES hospital2.ref_table(시도별);
ALTER TABLE hospital2.h2019 ADD CONSTRAINT h2019_ref_table_FK FOREIGN KEY (시도별) REFERENCES hospital2.ref_table(시도별);
ALTER TABLE hospital2.h2021 ADD CONSTRAINT h2021_ref_table_FK FOREIGN KEY (시도별) REFERENCES hospital2.ref_table(시도별);
ALTER TABLE hospital2.h2023 ADD CONSTRAINT h2023_ref_table_FK FOREIGN KEY (시도별) REFERENCES hospital2.ref_table(시도별);
