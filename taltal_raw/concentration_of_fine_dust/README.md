
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 서울지역 미세먼지 농도 
 
[에어코리아(Airkorea)](https://www.airkorea.or.kr)에 올라온 서울지역 미세먼지 농도 데이터셋

[데이터셋 바로보기](https://raw.githubusercontent.com/taltal-ddj/taltal/master/taltal_raw/concentration_of_fine_dust/mise.csv)

에어코리아 오픈API([공공데이터포털](https://www.data.go.kr)), [서울시 대기환경정보](http://cleanair.seoul.go.kr/main.htm) 등을 참고해 미세먼지 데이터 수집한 뒤 가공한 것

## 칼럼 설명

| 칼럼명            | 칼럼 설명                  | 데이터타입     |
| --------------- | ------------------------- | ----------- |
| location        | 서울시 구                    | `character` |
| date            | 관측일자                     | `date` |
| concentration   | 미세먼지 농도(㎍/m³), 관측 평균치 | `numeric` |
| standard        | 미세먼지 기준(좋음, 보통, 나쁨, 매우나쁨), WHO 권고치 | `character` |
| PM              | 미세먼지 종류(미세먼지(PM10), 초미세먼지(PM2.5)) | `character` |
* PM10은 2005년부터, PM2.5는 2015년부터 2019년 6월 25일까지

## 미세먼지 기준

| 미세먼지(PM10)     | 한국기준               | WHO 기준     |
| --------------- | ------------------------- | ----------- |
| 좋음             | 0~30                      | 0~30 |
| 보통             | 31~80                     | 31~50 |
| 나쁨             | 81~150                    | 51~100 |
| 매우나쁨           | 151~                     | 101~|

| 초미세먼지(PM2.5)  | 한국기준              | WHO 기준     |
| --------------- | ------------------------- | ----------- |
| 좋음             | 0~15                      | 0~15 |
| 보통             | 16~50                     | 16~25 |
| 나쁨             | 51~100                    | 26~50 |
| 매우나쁨           | 101~                     | 51~ |

## R로 데이터 불러올 때

``` r
#library(tidyverse)
df_mise <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vSeHC434NgPFobridB9YncQiiZcZQerb_8Kd8Mt8qNuBmjCRBUn38hGBqFURNqojK9fDwKQ_FRj9_YR/pub?gid=0&single=true&output=csv")
