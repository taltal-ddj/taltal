<!-- README.md is generated from README.Rmd. Please edit that file -->

# 세상에서 가장 무서운 개 품종 데이터셋
 
미국 비영리단체[ANIMALS 24-7](https://www.animals24-7.org)에 올라온 개 품종별 물림 사고(dog bite) 통계(1982~2015년 누적)

[데이터셋 바로보기](https://github.com/taltal-ddj/taltal/blob/master/taltal_raw/dog_bite/dog_bite.csv)

PDF 파일을 CSV 형식으로 변환한 것. PDF와 HTML, CSV 파일을 모두 올려놨습니다. 

## 칼럼 설명

| 칼럼명            | 칼럼 설명                  | 데이터타입     |
| --------------- | ------------------------- | ----------- |
| breed       | 개 품종               | `character` |
| attacks_doing_bodily_harm         | 사람에게 상해를 입힌 수                | `numeric` |
| child_victims	        | 피해를 입은 어린이 수              | `numeric` |
| adult_victims  | 피해를 입은 어른 수                 | `numeric` |
| deaths         | 개에 물려 죽은 사람의 수            | `numeric` |
| maimings	        | 개에 물려 불구가 된 사람의 수       | `numeric` |
| dog_pct   | 2015년 기준 북미 지역에서 사육하는 해당 품종의 수             | `numeric` |
| d_plus_m  | 개에 물려 죽거나 불구가 된 사람의 수      | `numeric` |

 
## 참고사항
- 원문을 보면 믹스견을 따로 분류해놓았지만 분석의 편의상 믹스견은 분리해서 계산. 예를 들어 저먼 세퍼드와 허스키 믹스견인 경우 저먼 세퍼드와 허스키에 해당 값을 모두 더함. 
- 가장 최신 데이터는 올 초 발행됐지만 그림파일 형태라 2015년 데이터로 분석. [최신 데이터 보기](https://www.animals24-7.org/2019/01/03/40-americans-canadians-killed-by-dogs-in-2018-31-by-pit-bulls/)
