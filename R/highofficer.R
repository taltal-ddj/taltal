#' High Ranking officer Property Data in S.Korea 2018-2019
#'
#' Every ends of March, Korea Government offer data of High Ranking officer Property Data in S.Korea 2018-2019
#'
#' @source https://github.com/taltal-ddj/taltal
#' @format Tibble with columns
#' \describe{
#' \item{소속_대분류}{소속의 대분류}
#' \item{소속_소분류}{소속의 소분류}
#' \item{소속}{소속_소분류의 하위 소속}
#' \item{직위}{공직자 현직위}
#' \item{성명}{공직자 이름}
#' \item{개별index}{소속, 직위, 성명을 붙인 개인 INDEX}
#' \item{대분류}{재산의 대분류. 17개로 구분}
#' \item{본인과의 관계}{본인 혹은 가족관계}
#' \item{재산의 종류}{소속 대분류 기준으로 구분되는 재산 하위 분류}
#' \item{소재지 면적 등 권리의 명세}{해당 재산의 세부내용}
#' \item{종전가액}{2018년도 신고금액}
#' \item{증가액}{2018년도 기준 2019년도 증가액}
#' \item{증가액_실거래가}{2018년도 기준 2019년도 실증가액}
#' \item{감소액}{2018년도 기준 2019년도 감소액}
#' \item{감소액_실거래가}{2018년도 기준 2019년도 실감소액}
#' \item{현재가액}{2019년도 현재 금액}
#' \item{변동사유}{재산 변동의 사유}
#' \item{years}{2018, 2019년도 구분}
#' }
#' @examples
#'   highofficer
"highofficer"

