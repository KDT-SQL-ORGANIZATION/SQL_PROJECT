# SQL 프로젝트 : 출생률 감소로 알아보는 사회 현상
10년간 전국 동네의원 24% 늘었는데…소아과·산부인과는 감소
![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/ca2333af-be17-4a04-b8a5-6c3122919d3b)

-> 출생률이 사회에 어떤 영향을 미치고 있는지 공공데이터 SQL 분석을 통해 알아보자!!!!

# 팀 소개 (클릭 시 상세내용 확인 가능)
<details>
<summary> 손예림 <a href="https://github.com/osllzd" height="5" width="10" target="_blank">
	<img src="https://img.shields.io/badge/github-181717?style=flat-square&logo=github&logoColor=white"/><a> : 전세계 출산율, 전국 출생률로 알아보는 우리나라 출생률 현황 / ppt 04p~10p </summary>
<div markdown="1">



</div>
</details>

<details>
<summary> 이윤서 <a href="https://github.com/voo0o08" height="5" width="10" target="_blank">
	<img src="https://img.shields.io/badge/github-181717?style=flat-square&logo=github&logoColor=white"/><a> : 출생률 감소로 인한 지역별 소아과, 산부인과 감소 추세 / ppt 11p~28p </summary>
<div markdown="1">

# 

## ✏️Table

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/ce311614-777c-4ed6-9543-8ca16c322a51)


데이터는 공공 데이터 포털의 자료를 필요한 부분만 합하여 Database에 table을 생성

## ✏️전처리 과정

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/18855441-1f59-4660-8af9-610636f8512a)


결측치가 -로 표기되어 있어 데이터의 형가 숫자형이 아닌 varchar로 들어감  0으로 바꿔줌 

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/950aaa0b-6f88-4920-897f-a5bf79784503)


for문을 사용하여 테이블들과 컬럼에 반복적으로 접근하여 “-”기호를 공백으로 변경

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/d7aa5ac4-2f33-48d8-a185-e3867bab3197)


공백 처리가 끝난 후에는 varchar형이 아닌 int로 형변환

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/6d52f939-0c54-4f00-9bc1-3c20cfce2ed8)


산부인과만 분석하기 위해 각 테이블의 시도 컬럼을 key로 join

단, 해당 쿼리문을 진료과 이름만 바꿔서 사용할 수 있기 때문에 아래와 같이 파이썬의 문자열 format과 반복문을 통해 병원 과 별로 테이블을 생성

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/324c6e3a-0aa0-40f0-8475-e5a35f468d3c)


따라서 17개 지역의 24개 과에 대한 병원 정보에 대한 DataFrame을 얻을 수 있음 

## ✏️데이터분석1 - 진료과로 보기

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/5a394fe7-f21c-4e51-bb13-d08c415c850f)


전체 병원 수에 대한 그래프 

---

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/ed88d3a1-a2f9-4ba7-bc4f-bddd070228b7)


주요(인기과)에 대한 그래프 

---
![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/57e6aaf8-25af-48cb-90c6-e96092c9ca1e)
산부인과, 소아청소년과에 대한 그래프 

전체 병원수와 인기과는 해마다 병원이 증가하는 추세를 보이지만 아동과 관련된 산부인과와 소아청소년과는 유지만 하고 있는 추세를 보임 

## ✏️데이터분석2 - 지역으로 보기

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/15e98e6d-99be-48e9-b700-fb69d524a1a4)


---

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/043c1c12-019a-4977-b770-c96bf9d54f21)


---

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/05dfb153-0ff1-49da-a09e-7d83f8eca5ce)

---

![image](https://github.com/voo0o08/SQL_PROJECT/assets/155411941/47ce9fd4-a834-4ea0-b82c-7fc31127b5e2)

## ✏️결론

타과들은 증가 / 유지하는 추세에 비해

소아과와 산부인과가 감소 / 유지되는 경향

→ 출생률이 감소하며 자연스럽게 산부인과와 소아과가 감소되는 것을 알 수 있음

</div>
</details>

<details>
<summary> 양현우 <a href="https://github.com/daat1996" height="5" width="10" target="_blank">
	<img src="https://img.shields.io/badge/github-181717?style=flat-square&logo=github&logoColor=white"/><a> : 출생률 감소와 혼인수, 유치원생 수 변화 비교 / ppt 29p~43p </summary>
<div markdown="1">



</div>
</details>

<details>
<summary> 옥영신 <a href="https://github.com/YeongshinOk" height="5" width="10" target="_blank">
	<img src="https://img.shields.io/badge/github-181717?style=flat-square&logo=github&logoColor=white"/><a> : 출생률 감소와 소아과, 산부인과 레지던트 지원률 비교 / ppt 44p~54p </summary>
<div markdown="1">



</div>
</details>


# 데이터 출처 

| DATA | LINK |
| ------ | ------ |
| 의료통계정보서비스목록 기관수현황 | [https://opendata.hira.or.kr/op/opc/olapYadmStatInfoTab4.do]|
| 합계출산율(OECD회원국) | [https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_2KAA207_OECD]|
| 전국 출생률비교 | [https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1B040M1&vw_cd=MT_ZTITLE&list_id=A_7&scrId=&seqNo=&lang_mode=ko&obj_var_id=&itm_id=&conn_path=MT_ZTITLE&path=%252FstatisticsList%252FstatisticsListIndex.do]|
| 시도/부부의 혼인종류별 혼인 | [https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1B83A11&conn_path=I3] |
| 시군구/출생아수, 합계 출산율 | [https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1B8000H&vw_cd=&list_id=&scrId=&seqNo=&lang_mode=ko&obj_var_id=&itm_id=&conn_path=K1][PlMe] |
| 유치원 개황 | [https://kosis.kr/statHtml/statHtml.do?orgId=334&tblId=DT_1963003_001] |

