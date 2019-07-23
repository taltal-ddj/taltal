<!-- README.md is generated from README.Rmd. Please edit that file -->

# 일본 직접투자기업 주가변동 데이터
 
외국인 직접투자(Foreign Direct Investment)는 외국인이 최소 1억원 이상을 투자해 국내기업 주식의 10% 이상을 소유하거나, 5년 이상의 장기차관을 제공하는 것이다. FDI는 그 나라가 한국 경제에 얼마나 기여하는지 보여주는 지표로 활용된다.  

산업통상자원부가 집계한 FDI 기업은 1만 8725개다. 

[외국인 직접투자기업 데이타셋](https://docs.google.com/spreadsheets/d/e/2PACX-1vTptysObToVtCf-S5GHI0CHTxSJF2ojotdQ7WXpG_GYjA_r-_D8eJY2Mcbl3B59OkIO-PC7urO95ZNm/pub?gid=1796112948&single=true&output=csv)

일본 기업은 3107개. 이 가운데 상장사는 79개다. 

다음은 일본 직접투자기업(상장사)의 7월 1일부터 22일까지의 주가 변동 데이터다. [일본 직접투자기업 데이터셋](https://github.com/taltal-ddj/taltal/blob/master/taltal_raw/japan_investment/df_japan_investment.csv)  
  
산업통상자원부의 외국인 직접투자기업정보(공공데이터포탈 버전), 외국인 투자통계를 기본으로 와이즈리포트 상장기업 지분구성, 한국거래소의 주가 변동 데이터를 분석했다. 
 

## 칼럼 설명

| 칼럼명            | 칼럼 설명                  | 데이터타입     |
| --------------- | ------------------------- | ----------- |
| 종목명       | 주식종목              | `character` |
| 국가         | 외국인 직접투자기업정보에 나온 대표투자국가          | `character` |
| 시장구분	        | 코스피 / 코스닥           | `character` |
| 산업분류 | 와이즈리포트의 산업구분                 | `character` |
| 7월1일~22일 주가변동 분석  | 1일을 기준으로 시가총액의 변동율을 계산한 것(단위 %)      | `numeric` |
 
 
## 참고 기사 
[관련기사 보기](https://news.joins.com/article/23533092)

 

