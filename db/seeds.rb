# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

require 'nokogiri'
require 'open-uri'
require 'json'
require 'uri'

=begin
#for product
Material.create!([
  {name: "귀리"},
  {name: "귀리가루"},
  {name: "누룽지"},
  {name: "머핀믹스"},
  {name: "메밀가루"},
  {name: "밀가루"},
  {name: "백미"},
  {name: "보리"},
  {name: "보리밥"},
  {name: "부침가루"},
  {name: "브라우니믹스"},
  {name: "빵가루"},
  {name: "식빵믹스"},
  {name: "쌀가루"},
  {name: "쌀밥"},
  {name: "쌀죽"},
  {name: "옥수수가루"},
  {name: "옥수수전분"},
  {name: "옥수수통조림"},
  {name: "율무"},
  {name: "제과용밀가루"},
  {name: "제빵용밀가루"},
  {name: "즉석밥"},
  {name: "찐옥수수"},
  {name: "찰옥수수"},
  {name: "참치죽"},
  {name: "찹쌀"},
  {name: "찹쌀가루"},
  {name: "찹쌀풀"},
  {name: "치킨가루"},
  {name: "쿠스쿠스"},
  {name: "퀴노아"},
  {name: "통밀"},
  {name: "튀김가루"},
  {name: "핫케익가루"},
  {name: "햇반"},
  {name: "현미"},
  {name: "현미가루"},
  {name: "현미밥"},
  {name: "흑미"},
  {name: "간짬뽕"},
  {name: "고기만두"},
  {name: "국수"},
  {name: "너구리순한맛(농심)"},
  {name: "너구리얼큰한맛(농심)"},
  {name: "떡볶이"},
  {name: "라면사리"},
  {name: "라이스페이퍼"},
  {name: "라자냐"},
  {name: "카로니"},
  {name: "만두피"},
  {name: "메밀국수 건면"},
  {name: "메밀국수 생면"},
  {name: "메밀냉면"},
  {name: "물만두"},
  {name: "불닭볶음면"},
  {name: "삼양라면(삼양)"},
  {name: "생면"},
  {name: "소면"},
  {name: "수제비"},
  {name: "스파게티면"},
  {name: "스프분말"},
  {name: "신라면(농심)"},
  {name: "쌀국수"},
  {name: "양파스프 분말"},
  {name: "우동면"},
  {name: "인스턴트짜장면"},
  {name: "중면"},
  {name: "진라면매운맛(오뚜기)"},
  {name: "쫄면"},
  {name: "칼국수면"},
  {name: "크림스프 분말"},
  {name: "파스타면"},
  {name: "팔도비빔면"},
  {name: "푸실리"},
  {name: "건빵"},
  {name: "꽃빵"},
  {name: "도너츠"},
  {name: "머핀"},
  {name: "모닝빵"},
  {name: "바게트"},
  {name: "바닐라푸딩"},
  {name: "베이글"},
  {name: "소보로빵"},
  {name: "스펀지케이크"},
  {name: "식빵"},
  {name: "우유식빵"},
  {name: "잉글리쉬머핀"},
  {name: "초콜렛프로스팅도너츠"},
  {name: "쵸코파이"},
  {name: "치아바타"},
  {name: "치즈케이크"},
  {name: "치즈피자"},
  {name: "카스테라"},
  {name: "커스터드빵"},
  {name: "크로아상"},
  {name: "크루통"},
  {name: "토스트식빵"},
  {name: "팥호빵"},
  {name: "팬케이크"},
  {name: "페이스트리"},
  {name: "페퍼로니피자"},
  {name: "피자"},
  {name: "핫도그빵"},
  {name: "핫케이크"},
  {name: "햄버거/핫도그용빵"},
  {name: "햄버거빵"},
  {name: "호밀빵"},
  {name: "나쵸"},
  {name: "또띠아"},
  {name: "마카롱"},
  {name: "브라우니"},
  {name: "비스켓"},
  {name: "새우깡(농심)"},
  {name: "애플쨈(롯데)"},
  {name: "초코샌드"},
  {name: "초코칩쿠키"},
  {name: "쵸코칩쿠키"},
  {name: "치즈샌드크래커"},
  {name: "치토스매콤한맛(오리온)"},
  {name: "칼슘 양파링(농심)"},
  {name: "코코볼"},
  {name: "콘푸레이크"},
  {name: "콘푸로스트"},
  {name: "쿠키"},
  {name: "크래커"},
  {name: "크림웨하스"},
  {name: "팝콘"},
  {name: "프레첼"},
  {name: "가래떡"},
  {name: "떡국떡"},
  {name: "떡볶이떡"},
  {name: "조랭이떡"},
  {name: "찹쌀떡"},
  {name: "감자"},
  {name: "감자전분"},
  {name: "감자튀김"},
  {name: "고구마"},
  {name: "고구마전분"},
  {name: "곤약"},
  {name: "당면"},
  {name: "물전분"},
  {name: "새알감자"},
  {name: "실곤약"},
  {name: "토란"},
  {name: "호박고구마"},
  {name: "도토리묵"},
  {name: "두부"},
  {name: "순두부"},
  {name: "연두부"},
  {name: "유부"},
  {name: "콩비지"},
  {name: "강낭콩"},
  {name: "검은깨"},
  {name: "검정콩 서리태"},
  {name: "견과"},
  {name: "노란콩"},
  {name: "녹두"},
  {name: "도토리"},
  {name: "도토리가루"},
  {name: "들깨가루"},
  {name: "땅콩"},
  {name: "땅콩가루"},
  {name: "렌즈(렌틸)콩"},
  {name: "리마콩 통조림"},
  {name: "마카다미아"},
  {name: "밤"},
  {name: "백두"},
  {name: "병아리콩"},
  {name: "병아리콩 통조림"},
  {name: "붉은팥"},
  {name: "생땅콩"},
  {name: "아몬드"},
  {name: "아몬드 슬라이스"},
  {name: "아몬드가루"},
  {name: "완두콩"},
  {name: "잣"},
  {name: "참깨"},
  {name: "치아씨드"},
  {name: "캐슈너트"},
  {name: "코코넛밀크"},
  {name: "코코넛워터"},
  {name: "코코넛파우더"},
  {name: "콩가루"},
  {name: "콩물"},
  {name: "콩자반"},
  {name: "팥앙금"},
  {name: "피스타치오"},
  {name: "피칸"},
  {name: "해바라기씨"},
  {name: "헤이즐넛"},
  {name: "호두"},
  {name: "호박씨"},
  {name: "가지"},
  {name: "버섯"},
  {name: "잎채소"},
  {name: "채소"},
  {name: "갓김치"},
  {name: "갯나물"},
  {name: "게걸무"},
  {name: "겨자잎"},
  {name: "고구마줄기"},
  {name: "고사리나물"},
  {name: "고수"},
  {name: "고추냉이"},
  {name: "고추씨싹"},
  {name: "고추장아찌"},
  {name: "곤드레나물"},
  {name: "곰취"},
  {name: "그린비타민"},
  {name: "김치국물"},
  {name: "깍두기"},
  {name: "깨나물"},
  {name: "깻잎"},
  {name: "꽃상추"},
  {name: "꽈리고추"},
  {name: "냉이"},
  {name: "노란파프리카"},
  {name: "느타리버섯"},
  {name: "단무지"},
  {name: "단호박"},
  {name: "달래"},
  {name: "당귀"},
  {name: "당근"},
  {name: "대파"},
  {name: "더덕"},
  {name: "도라지"},
  {name: "돌나물"},
  {name: "동채"},
  {name: "동치미"},
  {name: "두릅"},
  {name: "들미나리"},
  {name: "레몬그라스"},
  {name: "로메인상추"},
  {name: "루꼴라"},
  {name: "마늘"},
  {name: "마늘장아찌"},
  {name: "마늘쫑"},
  {name: "만가닥버섯"},
  {name: "명이나물"},
  {name: "목이버섯"},
  {name: "무말랭이"},
  {name: "무순"},
  {name: "무우거지"},
  {name: "무즙"},
  {name: "무청시래기"},
  {name: "물강활"},
  {name: "미나리"},
  {name: "바질"},
  {name: "방울토마토"},
  {name: "배추"},
  {name: "배추김치"},
  {name: "백김치"},
  {name: "버터넛"},
  {name: "베이비캐롯"},
  {name: "봄동"},
  {name: "부추"},
  {name: "붉은양배추"},
  {name: "브로콜리"},
  {name: "비트"},
  {name: "상추"},
  {name: "새송이버섯"},
  {name: "새싹채소"},
  {name: "생강"},
  {name: "생강넥타"},
  {name: "생강초절임"},
  {name: "섬초롱"},
  {name: "세발나물"},
  {name: "셀러리"},
  {name: "송이버섯"},
  {name: "숙주나물"},
  {name: "시금치"},
  {name: "실파"},
  {name: "쑥"},
  {name: "쑥갓"},
  {name: "아기양배추"},
  {name: "아스파라거스"},
  {name: "아욱"},
  {name: "아티초크"},
  {name: "알타리무"},
  {name: "애호박"},
  {name: "양배추"},
  {name: "양상추"},
  {name: "양송이버섯"},
  {name: "양파"},
  {name: "양파간것"},
  {name: "양파즙"},
  {name: "얼갈이"},
  {name: "연근"},
  {name: "열무"},
  {name: "열무김치"},
  {name: "열무물김치"},
  {name: "오이"},
  {name: "오이고추"},
  {name: "오이피클"},
  {name: "우엉"},
  {name: "우엉조림"},
  {name: "적양상추"},
  {name: "적파프리카"},
  {name: "조선무"},
  {name: "주키니호박"},
  {name: "주황파프리카"},
  {name: "죽순"},
  {name: "죽순 통조림"},
  {name: "쪽파"},
  {name: "차이브"},
  {name: "참나물"},
  {name: "청경채"},
  {name: "청치커리"},
  {name: "청파프리카"},
  {name: "청피망"},
  {name: "총각김치"},
  {name: "취나물"},
  {name: "컬리플라워"},
  {name: "케일"},
  {name: "콜라비"},
  {name: "콩나물"},
  {name: "토란대"},
  {name: "토마토"},
  {name: "토마토 통조림"},
  {name: "토마토쥬스"},
  {name: "토마토페이스트"},
  {name: "토마토퓨레"},
  {name: "파스닙"},
  {name: "파슬리"},
  {name: "팽이버섯"},
  {name: "포르타벨라버섯"},
  {name: "표고버섯"},
  {name: "표고버섯가루"},
  {name: "풋고추"},
  {name: "풋마늘"},
  {name: "피클렐리쉬"},
  {name: "할라피뇨"},
  {name: "홍고추"},
  {name: "홍피망"},
  {name: "감귤쥬스"},
  {name: "감말랭이"},
  {name: "거봉포도"},
  {name: "건대추"},
  {name: "건포도"},
  {name: "골든키위"},
  {name: "곶감"},
  {name: "귤"},
  {name: "귤잼"},
  {name: "그린올리브"},
  {name: "그린키위"},
  {name: "냉동딸기"},
  {name: "냉동라즈베리"},
  {name: "냉동블루베리"},
  {name: "단감"},
  {name: "대추"},
  {name: "딸기"},
  {name: "딸기잼"},
  {name: "라임"},
  {name: "라임쥬스"},
  {name: "라임즙"},
  {name: "라즈베리"},
  {name: "라즈베리 통조림"},
  {name: "레몬"},
  {name: "레몬껍질"},
  {name: "레몬즙"},
  {name: "망고"},
  {name: "망고주스"},
  {name: "매실"},
  {name: "매실농축액"},
  {name: "메론"},
  {name: "무화과"},
  {name: "바나나"},
  {name: "바질페스토"},
  {name: "배"},
  {name: "배간것"},
  {name: "배즙"},
  {name: "백도복숭아 통조림"},
  {name: "복분자"},
  {name: "복숭아잼"},
  {name: "블랙베리"},
  {name: "블랙올리브"},
  {name: "블루베리"},
  {name: "블루베리잼"},
  {name: "사과"},
  {name: "사과잼"},
  {name: "사과주스"},
  {name: "생강청"},
  {name: "석류"},
  {name: "수박"},
  {name: "아보카도"},
  {name: "오렌지"},
  {name: "오렌지주스"},
  {name: "올리브"},
  {name: "우메보시"},
  {name: "유자청"},
  {name: "자두"},
  {name: "자몽"},
  {name: "자몽주스"},
  {name: "참외"},
  {name: "천도복숭아"},
  {name: "청포도"},
  {name: "체리"},
  {name: "체리 통조림"},
  {name: "크랜베리"},
  {name: "크랜베리주스"},
  {name: "파인애플"},
  {name: "파인애플 통조림"},
  {name: "파인애플주스"},
  {name: "포도"},
  {name: "포도잼"},
  {name: "포도주스"},
  {name: "홍시"},
  {name: "황도복숭아"},
  {name: "황도복숭아 통조림"},
  {name: "효소"},
  {name: "후르츠칵테일"},
  {name: "갈매기살"},
  {name: "곰탕"},
  {name: "다진고기"},
  {name: "닭가슴살"},
  {name: "닭고기"},
  {name: "닭날개"},
  {name: "닭넙적다리"},
  {name: "닭다리"},
  {name: "닭다리살"},
  {name: "닭모래집"},
  {name: "닭발"},
  {name: "닭봉"},
  {name: "닭살코기"},
  {name: "닭육수"},
  {name: "돼지갈비"},
  {name: "돼지고기간것"},
  {name: "돼지고기등심"},
  {name: "돼지뒷다리살"},
  {name: "돼지등뼈"},
  {name: "돼지목살"},
  {name: "돼지삼겹살"},
  {name: "돼지안심"},
  {name: "돼지앞다리"},
  {name: "돼지족발"},
  {name: "삼계탕"},
  {name: "소갈비"},
  {name: "소고기"},
  {name: "소등심"},
  {name: "소안심"},
  {name: "소양지"},
  {name: "소육수"},
  {name: "쇠고기간것"},
  {name: "쇠고기다진것"},
  {name: "양고기"},
  {name: "영계"},
  {name: "오리고기"},
  {name: "우둔살"},
  {name: "차돌박이"},
  {name: "채끝살"},
  {name: "치킨너겟"},
  {name: "치킨스톡"},
  {name: "칠면조고기"},
  {name: "하이스가루"},
  {name: "홍두깨살"},
  {name: "후라이드치킨"},
  {name: "냉동돈가스"},
  {name: "동그랑땡"},
  {name: "둘리소시지"},
  {name: "미트볼"},
  {name: "미트소스"},
  {name: "베이컨"},
  {name: "불고기햄"},
  {name: "비엔나소시지"},
  {name: "살라미"},
  {name: "순대"},
  {name: "스팸"},
  {name: "스팸햄"},
  {name: "슬라이스햄"},
  {name: "옛날 소시지"},
  {name: "장조림"},
  {name: "초리조"},
  {name: "치킨까스"},
  {name: "핫도그"},
  {name: "햄버거패티"},
  {name: "후랑크햄"},
  {name: "계란"},
  {name: "계란노른자"},
  {name: "계란후라이"},
  {name: "계란흰자"},
  {name: "메추리알"},
  {name: "삶은계란"},
  {name: "가다랭이"},
  {name: "가다랭이포"},
  {name: "가리비"},
  {name: "간장게장"},
  {name: "갈치"},
  {name: "건멸치 작은것"},
  {name: "건멸치 중간크기"},
  {name: "건멸치 큰것"},
  {name: "건새우"},
  {name: "게맛살"},
  {name: "고등어"},
  {name: "고등어통조림"},
  {name: "고추참치통조림"},
  {name: "골뱅이통조림"},
  {name: "굴"},
  {name: "까나리액젓"},
  {name: "꼬막"},
  {name: "꼬치고기"},
  {name: "꽁치"},
  {name: "꽁치 통조림"},
  {name: "꽃게"},
  {name: "낙지"},
  {name: "날치알"},
  {name: "대구"},
  {name: "대구내장"},
  {name: "대하새우"},
  {name: "대합"},
  {name: "도다리"},
  {name: "동태"},
  {name: "멍게"},
  {name: "멸치다시육수"},
  {name: "멸치액젓"},
  {name: "멸치육수"},
  {name: "멸치통조림"},
  {name: "명란"},
  {name: "명란젓갈"},
  {name: "명태"},
  {name: "명태포"},
  {name: "모듬해물"},
  {name: "모시조개"},
  {name: "문어"},
  {name: "미더덕"},
  {name: "바지락"},
  {name: "반건오징어"},
  {name: "밴댕이"},
  {name: "북어"},
  {name: "삼치"},
  {name: "새우젓갈"},
  {name: "새조개"},
  {name: "생골뱅이"},
  {name: "소라"},
  {name: "아귀"},
  {name: "어묵(오뎅)"},
  {name: "연어"},
  {name: "연어통조림"},
  {name: "오징어"},
  {name: "오징어젓갈"},
  {name: "우럭"},
  {name: "우렁"},
  {name: "잔새우"},
  {name: "장어"},
  {name: "전복"},
  {name: "전복내장"},
  {name: "전어젓갈"},
  {name: "조개관자"},
  {name: "조개살"},
  {name: "주꾸미"},
  {name: "중하새우"},
  {name: "쥐포"},
  {name: "진미오징어"},
  {name: "참치통조림"},
  {name: "코다리"},
  {name: "크래미"},
  {name: "피쉬소스"},
  {name: "피쉬스틱"},
  {name: "해파리"},
  {name: "홍합"},
  {name: "황태"},
  {name: "훈제연어"},
  {name: "건다시마"},
  {name: "건미역"},
  {name: "구운김"},
  {name: "김밥용김"},
  {name: "다시육수"},
  {name: "마른김"},
  {name: "매생이"},
  {name: "미역줄기"},
  {name: "생미역"},
  {name: "염장미역줄기"},
  {name: "톳나물"},
  {name: "파래"},
  {name: "한천"},
  {name: "고다치즈"},
  {name: "그뤼에르치즈"},
  {name: "그릭요거트"},
  {name: "딸기우유"},
  {name: "리코타치즈"},
  {name: "모짜렐라치즈"},
  {name: "바나나우유"},
  {name: "바닐라아이스크림"},
  {name: "분유"},
  {name: "브리치즈"},
  {name: "블루치즈"},
  {name: "사워크림"},
  {name: "생크림"},
  {name: "스트링치즈"},
  {name: "앙팡치즈(서울우유)"},
  {name: "액상크림"},
  {name: "연유"},
  {name: "요거트"},
  {name: "요구르트"},
  {name: "체다치즈"},
  {name: "초코우유"},
  {name: "쵸콜렛아이스크림"},
  {name: "카망베르치즈"},
  {name: "커스터드크림"},
  {name: "커피우유"},
  {name: "크림치즈"},
  {name: "파마산치즈"},
  {name: "페타치즈"},
  {name: "폰티나치즈"},
  {name: "프로볼론치즈"},
  {name: "플레인요거트"},
  {name: "휘핑크림"},
  {name: "흰우유"},
  {name: "흰우유 무지방"},
  {name: "흰우유 저지방"},
  {name: "겨자분말"},
  {name: "겨자페이스트"},
  {name: "계피분말"},
  {name: "고추가루"},
  {name: "고추장"},
  {name: "고형 야채치킨스톡"},
  {name: "국간장"},
  {name: "굴소스"},
  {name: "굵은소금"},
  {name: "깨소금"},
  {name: "꿀"},
  {name: "낫또"},
  {name: "단풍잎"},
  {name: "데리야끼소스"},
  {name: "돈가스소스"},
  {name: "된장"},
  {name: "두반장"},
  {name: "라면스프"},
  {name: "마늘가루"},
  {name: "마요네즈"},
  {name: "맛소금"},
  {name: "머스터드소스"},
  {name: "메이플시럽"},
  {name: "멸치다시다"},
  {name: "미림"},
  {name: "미원"},
  {name: "바닐라 빈"},
  {name: "바닐라 에센스"},
  {name: "발사믹식초"},
  {name: "밥이랑"},
  {name: "배조청"},
  {name: "백설탕"},
  {name: "버터"},
  {name: "사과식초"},
  {name: "사우전아일랜드드레싱"},
  {name: "사탕수수시럽"},
  {name: "살사소스"},
  {name: "생강가루"},
  {name: "석류시럽"},
  {name: "소금"},
  {name: "쇠고기다시다"},
  {name: "슈가파우더"},
  {name: "식초"},
  {name: "실고추"},
  {name: "쌀식초"},
  {name: "쌈장"},
  {name: "아가베시럽"},
  {name: "애플민트"},
  {name: "양념간장"},
  {name: "양조간장"},
  {name: "올스파이스분말"},
  {name: "와사비페이스트"},
  {name: "우스터소스"},
  {name: "일본된장"},
  {name: "자일로스설탕"},
  {name: "진간장"},
  {name: "짜장분말"},
  {name: "쯔유"},
  {name: "참치액"},
  {name: "찹쌀고추장"},
  {name: "청국장"},
  {name: "초고추장"},
  {name: "초피가루"},
  {name: "쵸코시럽"},
  {name: "춘장"},
  {name: "칠리소스"},
  {name: "칠리파우더"},
  {name: "카레가루"},
  {name: "커민가루"},
  {name: "코셔소금"},
  {name: "콘시럽"},
  {name: "타르타르소스"},
  {name: "타바스코소스"},
  {name: "토마토소스"},
  {name: "토마토케찹"},
  {name: "파슬리가루"},
  {name: "파프리카분말"},
  {name: "한식된장"},
  {name: "핫소스"},
  {name: "해선장소스"},
  {name: "허니머스타드"},
  {name: "허브솔트"},
  {name: "현미식초"},
  {name: "황설탕"},
  {name: "후추"},
  {name: "흑설탕"},
  {name: "흑후추"},
  {name: "흰후추"},
  {name: "가나초콜릿(롯데)"},
  {name: "구미젤리"},
  {name: "누텔라"},
  {name: "다크초콜릿"},
  {name: "마쉬맬로우"},
  {name: "물엿"},
  {name: "밀크초콜릿"},
  {name: "사탕"},
  {name: "올리고당"},
  {name: "젤라틴"},
  {name: "젤라틴 물혼합"},
  {name: "젤리"},
  {name: "초콜릿"},
  {name: "쵸코볼"},
  {name: "팥양갱"},
  {name: "화이트초콜릿"},
  {name: "계피차 분말"},
  {name: "녹차가루"},
  {name: "녹차잎"},
  {name: "두유"},
  {name: "럼"},
  {name: "레드와인"},
  {name: "막걸리"},
  {name: "맥주"},
  {name: "물"},
  {name: "보드카"},
  {name: "보리차"},
  {name: "사이다"},
  {name: "사케"},
  {name: "샴페인"},
  {name: "소다수"},
  {name: "소주"},
  {name: "쌍화차 분말"},
  {name: "얼음"},
  {name: "에스프레소"},
  {name: "위스키"},
  {name: "청주"},
  {name: "치커리차"},
  {name: "커피"},
  {name: "커피가루"},
  {name: "커피믹스"},
  {name: "커피원두"},
  {name: "코코아가루"},
  {name: "콜라"},
  {name: "화이트와인"},
  {name: "흑맥주"}
])
=end


def make_ourform(product_title)
  result = Hash.new
  name = ""
  weight = ""
  bundle = ""
  product_title.split(", ").each_with_index do |p, index|
    if index == 0
      name = p.strip
    elsif p.length > 5
      name = name + p.strip
    elsif p.include?("g") && p.exclude?("개")
      weight = p.strip
    else
      bundle = p.strip
    end
  end
  result["name"] = name
  result["weight"] = weight
  result["bundle"] = bundle
  return result
end

Material.first(100).each do |m|
  keyword = m.name
  puts keyword
  url = "http://www.coupang.com/np/search?component=194176&q=" + URI.encode(keyword) + "&channel=user"
  data = Nokogiri::HTML(open(url))
  if !data.nil?
    product = data.css('li.search-product a dl').first
    if product.css('dd.descriptions div.price-area strong.price-value').first.nil?
      product = data.css('li.search-product a dl').second
    end
    name = product.css('dd.descriptions div.name').text
    description =  make_ourform(name)
    price = product.css('dd.descriptions div.price-area strong.price-value').first.text
    image = product.css('dt.image img').attr('src').text.delete('//')
    product = Product.new(price: price, image: image, name: description["name"],
                          weight: description["weight"], bundle: description["bundle"],
                          material_id: m.id)
    if product.save!
      puts "#{product.name} is created"
    end
  end
end


# for recipe crawilng
=begin
(37..70).each do |index|
  url = "http://haemukja.com/recipes/" + index.to_s
  input = Nokogiri::HTML(open(url))
  title = input.css('div.aside h1 strong').text
  input.css("div.btm li").each do |li|
    name = li.css('span').text.delete(' ')
    un_unit = li.css('em').text.delete(' ')
      unit = un_unit.split(/(?<=\d)(?=[ㄱ-ㅎ|가-힣|a-z|A-Z|])/).last
    if !un_unit.nil? && !unit.nil?
      name = name.split("(").first
      unit = unit.split("(").first
      puts "#{title} #{name} >> #{unit}"
    end
  end
end
=end

=begin
def validate(string)
  validate_string = ["말린것", "마른것", "삶은것", "찐것", "볶은것", "각종", "익힌것", "데친것"]
  result = string
  validate_string.each do |word|
    if string.include? word
      result = string.delete(word).delete(" ")
    end
  end
  return result
end
(1..19).each do |index|
  url = "http://haemukja.com/get_bf_group_items.json?bf_group_id=" + index.to_s
  input = JSON.load(open(url))
  input.each do |material|
    name = validate(material["name"])
    if name == "소멘"
      name = "소면"
    end
    if Material.where(name: name).count == 0
      material = Material.new(name: name)
      if material.save!
        puts "#{material.name} is created"
      end
    end
  end
end
=end
