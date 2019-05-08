
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 탈탈(taltal) 데이터 패키지

[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)

중앙일보 데이터저널리즘 **탈탈**팀에서 2018-2019년 `고위공직자재산`을 공개합니다. 고위공직자 재산 데이터는 매년 3월말
정부, 국회, 법원, 헌법재판소, 중앙선거관리위원회에서 공보를 통해 공시하고 있습니다. 추후 프로젝트에서 활용된 데이터는 추가될
예정입니다. PDF를 R코드를 활용해서 변환했으며, 변환 과정에서 작은 오류가 발견될 수 있습니다. 오류는 `issue`에
올려주시면 수정 및 반영하도록 하겠습니다.

  - `highofficer` : 2018-2019년 고위공직자 재산 PDF를 Data.frame으로 변환한 데이터셋

## 칼럼 설명

| 칼럼명             | 칼럼 설명                     | 데이터타입       |
| --------------- | ------------------------- | ----------- |
| 소속\_대분류         | 소속의 대분류                   | `character` |
| 소속\_소분류         | 소속의 소분류                   | `character` |
| 소속              | 소속\_소분류의 하위 소속            | `character` |
| 직위              | 공직자 현직위                   | `character` |
| 성명              | 공직자 이름                    | `character` |
| 개별index         | 소속, 직위, 성명을 붙인 개인 INDEX   | `character` |
| 대분류             | 재산의 대분류, 17개로 구분          | `character` |
| 본인과의 관계         | 본인 혹은 가족관계                | `character` |
| 재산의 종류          | 소속 대분류 기준으로 구분되는 재산 하위 분류 | `character` |
| 소재지 면적 등 권리의 명세 | 해당 재산의 세부내용               | `character` |
| 종전가액            | 전년도 신고금액                  | `numeric`   |
| 증가액             | 전년도 대비 증가액                | `numeric`   |
| 증가액\_실거래가       | 전년도 대비 실증가액               | `numeric`   |
| 감소액             | 전년도 대비 감소액                | `numeric`   |
| 감소액\_실거래가       | 전년도 대비 실감소액               | `numeric`   |
| 현재가액            | 당해 년도 금액                  | `numeric`   |
| 변동사유            | 재산 변동의 사유                 | `character` |
| years           | 고위공직자 연도 구분 (2018, 2019)  | `numeric`   |

## 사용방법

`taltal`팀에서 운영하는 GitHub
[Repository](https://github.com/taltal-ddj/taltal)에서 패키지 다운로드 가능  
아래 방법을 참고해주세요. 설치 이후에는 `library(taltal)` 후에 `highofficer`로 데이터를 불러오면
됩니다.

``` r
# install.packages("remotes")
remotes::install_github("taltal-ddj/taltal")
```
