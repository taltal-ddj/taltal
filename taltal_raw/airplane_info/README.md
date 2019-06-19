<!-- README.md is generated from README.Rmd. Please edit that file -->

# 국내 항공기 등록정보 데이터셋

[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
 
[항공기정보포털시스템(Airportal)](http://atis.koca.go.kr/ATIS/aircraft/forwardPage.do?pageUrl=aircraftRegStat01)에 올라온 항공기 등록현황 데이터셋

[데이터셋 바로보기](https://github.com/taltal-ddj/taltal/blob/master/taltal_raw/airplane_info/airplane_info.csv)

R package jsonlite를 활용해 등록정보 838건을 크롤링한 것.

## 칼럼 설명

| 칼럼명            | 칼럼 설명                  | 데이터타입     |
| --------------- | ------------------------- | ----------- |
| REG_CUSER       | 항공사 이름                  | `character` |
| REG_SNO         | 등록기호                     | `character` |
| AIR_TYPE        | 항공기 모델명                 | `character` |
| AIR_BUILD_DATE  | 항공기 제조일자                | `date` |
| AIR_AGE         | 기령(항공기 연식)              | `numeric` |
| REG_DATE        | 항공기 등록일자(국내 기준)       | `date` |
| AIR_LIMIT_MAN   | 항공기 좌석수                | `numeric` |
| AIR_FLY_WEIGHT  | 항공기 최대이륙중량        | `character` |
| REG_JANG        | 항공기 정치장소              | `character` |
| PROC_TYPE       | 도입형태(구매, 임차(운용리스), 임구(금융리스))       | `character`   |
| PRJ_GBN         | 사업구분                 | `character`   |
 

## 크롤링 방법


``` r
# install.packages("jsonlite")  
library(jsonlite)  
url <- 'http://atis.koca.go.kr/ATIS/aircraft/statList01.do?AIR_GUBUN=all&_=1560917279832'  
airplane <- fromJSON(url)  
airplane <- airplane$data  
airplane <- airplane[ ,c(-1, -5, -13:-17)]
  
