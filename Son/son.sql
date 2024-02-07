desc 10years_world;
select * from `10years_world` yw ;

-- 국가 비교 대한민국, 일본만 뽑아내보기
select * from `10years_world` yw 
where 국가별 in ('대한민국', '일본', '미국','영국','프랑스');
-- 우리나라 근 10년 인구수 --
desc `10years_korean` ;
select * from `10years_korean` yk ;
-- 0세 기준으로 뽑아내기 -- 
select * from `10years_korean` yk 
where 성별 = '총인구수[명]' and 연령별 = '0세';

-- 광역시만 뽑아내기 --
select * from `10years_korean` yk 
where 행정구역별 in('서울특별시', '부산광역시', '대구광역시', '인천광역시', '광주광역시', '대전광역시', '울산광역시') and 성별 = '총인구수[명]' and 연령별 = '0세';