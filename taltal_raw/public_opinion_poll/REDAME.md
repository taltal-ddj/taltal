<!-- README.md is generated from README.Rmd. Please edit that file -->

# 리얼미터-갤럽 여론조사 결과 비교

[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
 
국내 대표 여론조사기관인 [리얼미터](http://www.realmeter.net/category/pdf/)와 [갤럽](http://www.gallup.co.kr/gallupdb/report.asp)이 조사 발표한 '2019년 1~6월 문재인 대통령 국정평가' 결과 데이터셋

[데이터셋 바로보기(df_realgallup2019.csv)](https://github.com/taltal-ddj/taltal/blob/master/taltal_raw/public_opinion_poll/df_realgallup2019.csv)

PDF 형식의 파일을 CSV 형식으로 변환해 가공한 것. 

## 칼럼 설명

| 칼럼명            | 칼럼 설명                  | 데이터타입     |
| --------------- | ------------------------- | ----------- |
| date            | 조사날짜                     | `date` |
| category        | 응답결과 '잘한다' '잘못한다' '모름무응답' | `character` |
| gallup          | 갤럽조사값(%)                 | `numeric` |
| realmeter       | 리얼미터조사값(%)              | `numeric` |
| gap             | 리얼미터조사값에서 갤럽조사갑을 뺀 수치(%) | `numeric` |

 
## 참고(리얼미터와 갤럽 조사개요 비교)

### 리얼미터
질문내용: 선생님께서는 현재 문재인 대통령의 국정수행에 대하여 어떻게 평가하십니까? 01번. 매우 잘하고 있다 02번. 잘하는 편이다 03번. 잘못하는 편이다 04번. 매우 잘못하고 있다 05번. 모름/무응답
표본추출: 무선(80%)·유선(20%) 병행 무작위생성 표집틀을 통한 임의 전화걸기
조사방법: 무선 전화면접(10%), 무선(70%)·유선(20%) 자동응답 혼용(2-day-rolling average)
표본오차: 95%신뢰수준에서 ±2.0%p 
의뢰처: YTN

### 갤럽
질문내용:귀하는 문재인 대통령이 대통령으로서의 직무를 잘 수행하고 있다고 보십니까, 혹은 잘못 수행하고 있다고 보십니까? (긍정/부정을 답하지 않은 경우 재질문) 굳이 말씀하신다면, ‘잘하고 있다’와 ‘잘못하고 있다’ 중 어느 쪽입니까?
표본추출: 휴대전화 RDD 표본 프레임에서 무작위 추출(집전화 RDD 15% 포함)
조사방업: 전화조사원 인터뷰(3-day-rolling average)
표본오차: ±3.1%포인트(95% 신뢰수준) 
의뢰처: 갤럽자체조사
 

