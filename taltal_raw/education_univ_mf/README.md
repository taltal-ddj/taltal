
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 세계 주요대학 재학생 남녀 비율 
 
매년 세계 주요대학 순위를 발표하는 기관인 [Times Higher Education(THE)](www.timeshighereducation.com/)의 2019년 발표 데이터

[데이터셋 바로보기](https://github.com/taltal-ddj/taltal/blob/master/taltal_raw/education_univ_mf/times_2019.csv)
 
[Times Higher Education(THE)](www.timeshighereducation.com/) 사이트를 크롤링한 뒤 2019년 남녀 재학생 비율만 추려낸 데이터임. 
2019년에는 전세계 1258개 대학이 평가대상. 이 중 남녀 재학생 비율을 등록한 곳은 1201개 대학. 

## 칼럼 설명

| 칼럼명            | 칼럼 설명                  | 데이터타입     |
| --------------- | ------------------------- | ----------- |
| rank        | 2019년 대학 순위                    | `numeric` |
| name            | 대학명                     | `character` |
| scores_overall   | THE가 매긴 각 대학의 평가 점수 | `character` |
| location              | 대학 소재 국가 | `character` |
| stats_number_student              | 총 재학생 수 | `numeric` |
| female              | 총 재학생 중에서 여성 비율 | `numeric` |
| male          | 총 재학생 중에서 남성 비율 | `numeric` |
| female_num              | 여성 재학생 수 | `numeric` |
| male-num          | 남성 재학생 수| `numeric` |

## R을 이용한 [Times Higher Education(THE)](www.timeshighereducation.com/) 사이트 크롤링 방법

``` r
# 패키지 부착  
library(rvest)   
library(jsonlite)  
library(tidyverse)  
   
# 변수 지정     
yearr <- c(2011:2019) #2011년부터 자료 제공   
yeard <- c("2011_limit0_b785bc262014363993bdf924ed599a48", "2012_limit0_b9022e9cb52708af885d5be4112a63c3",   "2013_limit0_2bf875968612fc31d2fd99a6a1de12ef", "2014_limit0_516ea1cc0aba275ce8f6e1f7f8cc7014",  
  "2015_limit0_3b4a26d6f223d75c71def66929572393", "2016_limit0_a38b8fe86b742996f9ea3df4b4ca09f3",   "2017_limit0_94aa8e595206a1cd1284e2808330a79c", "2018_limit0_369a9045a203e176392b9fb8f8c1cb2a",  
"2019_limit0_7216a250f6ae72c71cd09563798a9f18") #연도별 url 변경 부분

# for문으로 2011~2019년 데이터 한꺼번에 정리  
times_rank <- NULL #2011~2015년 데이터   
times_rank1 <- NULL #2016~2019년 데이터  
   
for(i in 1:9) {  
  times <-  fromJSON(str_c('https://www.timeshighereducation.com/sites/default/files/the_data_rankings/world_university_rankings_', yeard[i], '.json'))  
  times <- times$data  
  times <- times %>%   
    mutate(year = yearr[i])  
  if(ncol(times) == 24){  
  times_rank <- rbind(times_rank, times)  
  } else {  
  times_rank1 <- rbind(times_rank1, times)  
  }  
  print(i)  
}  

