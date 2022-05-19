import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/menitemsone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/menitems/playfun/playfuncomponent/playfunone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/roomhome/roomhomeitemone.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/roomhome/roomhomeitemtwo.dart';
import 'package:flutter_naver_clone/components/body/components/rightbodycomponent/trandshoppingcomponent/shoppingmallitems/theshop/theshopitemone.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ShoppingMallInfo extends GetxController {
  List get shoppingMallLogo => [
        //bodyluv
        "https://shopping-phinf.pstatic.net/20200826_2/b47912bd-0a97-410f-a33e-4250b0a9c58e.jpg",
        //Room&Home
        "https://shopping-phinf.pstatic.net/20200908_18/207641a8-9ac6-43bc-8a8c-3d48e90a853c.jpg",
        //TBH SHOP
        "https://shopping-phinf.pstatic.net/20210830_22/592dd80c-a79c-42bb-a6c7-d7f4fb36939f.jpg"
      ];

  List get shoppingMallItemsTop => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_12/dd7d5a74-ba67-4a96-878f-6818d0d084ca.jpg",
          "title": "은색말고 핫한 무광화이트",
          "subTitle": "리모델링 했냐고 물어요~"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_20/d054d742-0792-40bf-9605-1480f9f3a0fb.jpg",
          "title": "참~ 쉬운 감성주방 노하우",
          "subTitle": "싱크대 필터 2만원대 특가"
        }
      ];

  List get shoppingMallItemsBottom => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220510_13/4a7dc334-cb16-4703-81cf-1593b59ae923.jpg",
          "title": "기름진 얼굴~",
          "subTitle": "세수부터 이걸로!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220506_6/999dbe0e-2d85-4077-ac40-3aa7dee92af4.jpg",
          "title": "스몰 인테리어?",
          "subTitle": "컬러만 바꾸고 꿀"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220510_3/714b289b-e887-4a22-bd12-48027089d850.jpg",
          "title": "반팔맞이 팔꿈치",
          "subTitle": "각질? 때밀이NO~"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_22/89ee4925-ca76-41ea-97a3-4afc0236120d.jpg",
          "title": "물치실+샤워필터2",
          "subTitle": "8만원대 다줄게!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_6/f0aaa9ec-192d-43d7-85e0-e96fe1749fbe.jpg",
          "title": "비타민C 샤워~",
          "subTitle": "피부가 환해지네?"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_12/271dbe75-b1d5-4897-8b92-8126d43ec72c.jpg",
          "title": "땀뻘뻘~ 여름코앞",
          "subTitle": "1만원할인 곧종료"
        },
      ];

  List get roomHomeItemsTop => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_13/1cd95cb9-b965-424c-9e6c-40cd2acef4b5.jpg",
          "title": "다들 피크닉 갈 준비",
          "subTitle": "하고계시죠?"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_22/227d7b5a-ab11-4cea-baa9-88b10c3975f1.jpg",
          "title": "이렇게 예쁜데",
          "subTitle": "3만원 대부터?"
        }
      ];

  List get roomHomeItemsBottom => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_20/3a7b3a0f-d7b2-40f1-8567-7de759890f17.jpg",
          "title": "공간활용 갑",
          "subTitle": "사방행거"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_29/a2bedc3c-a715-4d0d-bf0f-baa9414d7915.jpg",
          "title": "벽지 손상없는",
          "subTitle": "인테리어 오브제"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_28/a612adc0-907c-4c35-99ed-141c8da221b7.jpg",
          "title": "잠이 솔솔",
          "subTitle": "쿨방석 할인"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_27/6e41e257-41a4-4a9c-aa45-3459f9e66b5b.jpg",
          "title": "집에서 즐기는",
          "subTitle": "콜드브루"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_28/64d72a69-530c-4f64-b8d6-d2bc56c4aa47.jpg",
          "title": "여름감성 한컵",
          "subTitle": "레트로 유리잔"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_12/459af589-88f8-4192-addd-c140857f5531.jpg",
          "title": "인덕션쿡웨어",
          "subTitle": "1+1 골라담기"
        },
      ];

  List get theShopItemsTop => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_27/b2d953e2-a548-43af-851b-da431cee482b.jpg",
          "title": "한 벌로 여름준비 끝",
          "subTitle": "이유있는 베스트 아이템!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_20/53eba61b-209d-4f1c-b33f-254b11e3bcda.jpg",
          "title": "원피스는 역시 쥬시쥬디",
          "subTitle": "입어보면 빠져드는 편안함"
        },
      ];

  List get theShopItemsBottom => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_11/80d8eebb-d00f-4d37-b0c9-25de193c2047.jpg",
          "title": "마인드브릿지우먼",
          "subTitle": "쿨 카라니트 특가"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_14/d1b5d9aa-4287-4310-bf7c-2900d76fe23e.jpg",
          "title": "후기극찬 원피스",
          "subTitle": "쿠폰할인 7만원대"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_9/f8421cc4-c612-4627-a22d-8d739909d043.jpg",
          "title": "신상 데님원피스",
          "subTitle": "지금 제일 잘나가"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_28/46fe3321-0ddf-4d1c-a19f-b5a4b7a7647f.jpg",
          "title": "수피마티셔츠 40%",
          "subTitle": "입는순간 시원해!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_22/4c16d90a-ea80-48c7-9d95-6fa5c8049070.jpg",
          "title": "여름팬츠 끝판왕",
          "subTitle": "남성 쿨 슬랙스"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_15/f5dfb176-1db8-48d2-8343-6f63cf7fc9cc.jpg",
          "title": "마인드브릿지 1+1",
          "subTitle": "티셔츠 39,900원"
        }
      ];

  //쇼핑몰 광고 area
  List get mallItemsPageOne => [
        {
          "name": "창안에",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20200921_19/e445b0f6-81ea-4992-8bbf-226a45c0f56f.jpg",
          "title1": "여름맞이~데일리",
          "subTitle1": "맞춤 시폰커튼~!",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20220325_10/6873bf51-f04e-4daf-b0ab-816398947d77.jpg",
          "title2": "모던감성~연출",
          "subTitle2": "원목우드블라인드",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20220111_0/cf3cb8f3-6531-47c7-9fee-40a4fd7c818e.jpg",
          "title3": "아직도 벽에구멍?",
          "subTitle3": "못없이 설치하자!"
        },
        {
          "name": "아라크네",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20200826_18/c4d76153-f297-4911-b860-15aa5d7a1212.jpg",
          "title1": "산뜻한 인테리어",
          "subTitle1": "콤비 블라인드",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20200826_23/9e9b4a1d-4374-43ba-a389-e037ffbf01f9.jpg",
          "title2": "모던하게~",
          "subTitle2": "우드 블라인드",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20200826_11/77d83898-a9ab-43ed-9a7a-bb465bd5e32a.jpg",
          "title3": "꿀잠 지킴이",
          "subTitle3": "암막 롤스크린"
        },
        {
          "name": "카페로메오",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20220511_18/17b5d2b1-303c-4b63-bcbe-7454176e1dd2.jpg",
          "title1": "더울때는?",
          "subTitle1": "실리콘 왕얼음들",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20220511_19/922c9bc8-f861-471d-8c55-213a9d7677f8.jpg",
          "title2": "여름에도!",
          "subTitle2": "내열유리 티팟",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20220511_15/baeb5f22-cfa1-4785-8ba3-272d5f31c43d.jpg",
          "title3": "주방에는?",
          "subTitle3": "화이트 조리도구"
        }
      ];

  List get mallItemsPageTwo => [
        {
          "name": "CLEO끌레오",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20220421_7/2384131f-a9e3-4881-baa8-4f97b50852b8.jpg",
          "title1": "이거 어디서 샀어",
          "subTitle1": "다들 물어봐",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20220421_9/eb699ada-f2c3-4b5f-a18c-1d332fbb4241.jpg",
          "title2": "카페 온 듯",
          "subTitle2": "눈에 띄는 테이블",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20220421_19/3df0e8bc-52c0-4f18-bdbb-025272a06e2b.jpg",
          "title3": "이렇게 예쁘다고?",
          "subTitle3": "분위기UP 화장대"
        },
        {
          "name": "실리쿡",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20220228_0/4ccacefd-5f39-44b7-bf12-0cb91210d947.jpg",
          "title1": "손안대도 열리는",
          "subTitle1": "물병 본적있어?",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20220504_13/12c15b60-65fb-46e5-8f4a-3f3c66deb60e.jpg",
          "title2": "대용량 빵은",
          "subTitle2": "여기에 보관해봐",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20220228_12/53e280e3-40a5-4eb3-a3ff-c5c2b21eb0e8.jpg",
          "title3": "깊숙한 냉장고도",
          "subTitle3": "롱하프로 해결!"
        },
        {
          "name": "브로스앤컴퍼니",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20220517_19/b409b21c-b015-442e-9e58-45372774b3c6.jpg",
          "title1": "신발벗고 올려봐",
          "subTitle1": "풀메탈로 시원해!",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20220429_16/34ffe97f-b2f2-4559-9a03-3db4e999988c.jpg",
          "title2": "라면 좋아해?",
          "subTitle2": "대용량 멀티쿠커",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20220513_14/d189718b-1c72-41ac-bd7a-201481447f51.jpg",
          "title3": "착!하고 잘붙어요",
          "subTitle3": "아이패드 거치대"
        }
      ];

  List get mallItemsPageThree => [
        {
          "name": "공간조명",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20220513_17/12343e20-d89b-4016-9899-3f944630ca67.jpg",
          "title1": "여자를 위한 공간",
          "subTitle1": "1cm까지 센스있게",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20220513_10/24cb2e0d-266d-496e-871f-200cc0f6b169.jpg",
          "title2": "스마트실링팬으로",
          "subTitle2": "올 여름 준비 끝!",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20220513_1/72f02445-13ed-4c09-a6b1-12dab7ebd7b5.jpg",
          "title3": "다양한 변주로",
          "subTitle3": "매일 색다른 공간"
        },
        {
          "name": "에버바디",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20220510_1/3edd0f1b-90db-4116-a53b-2840995706de.jpg",
          "title1": "휘어진 발가락",
          "subTitle1": "이걸로 딱! 교정",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20220510_22/d01043f5-4488-4028-a0e3-a9094cb5faaa.jpg",
          "title2": "엄마아빠 선물로!",
          "subTitle2": "2개사면 1개 반값",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20220510_20/94aec046-0332-4d10-9b96-1eb2f0b1ffe0.jpg",
          "title3": "지금 딱 필요할걸",
          "subTitle3": "2개 사면 1개 더!"
        },
        {
          "name": "젖병소독기유팡",
          "image1":
              "https://s.pstatic.net/shopping.phinf/20200826_3/cdb4d513-88c1-409d-a6cd-99bd7cbf384e.jpg",
          "title1": "출산선물 고민해?",
          "subTitle1": "젖병소독기 선물!",
          "image2":
              "https://s.pstatic.net/shopping.phinf/20200826_7/63ef4428-7fc9-4aaf-89ad-7797c6b86c5d.jpg",
          "title2": "속보, 신제품출시",
          "subTitle2": "UV자외선살균LED",
          "image3":
              "https://s.pstatic.net/shopping.phinf/20200826_26/5a541fdd-d243-470a-aa81-96028a1e38b1.jpg",
          "title3": "이젠 걱정없이",
          "subTitle3": "소독, 살균 끝~!"
        }
      ];

  List get menItemsPageOne => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_8/c8b1bcbd-d87f-41bf-b57a-64859531f997.jpg",
          "title": "더운데 다림질?",
          "subTitle": "이건 자동이야~!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_23/1665a75e-7118-4264-9784-c7768b34ba5b.jpg",
          "title": "풍성한 자신감",
          "subTitle": "이거 하나면 끝!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_20/e28bec02-7401-4c15-ad48-834810ba4577.jpg",
          "title": "특별한 물줄기로",
          "subTitle": "운동후 피로회복"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220427_15/0862c840-96e5-492f-96ac-62e37a7f2935.jpg",
          "title": "미소페 40% ↓",
          "subTitle": "만족후기 살펴봐~"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220519_24/5550202b-f6f5-473d-bc9f-480514ff0aab.jpg",
          "title": "지오지아 7부리넨",
          "subTitle": "깔끔셔츠~76%"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_22/166cac00-47df-461e-ab9f-e475c6ae81d3.jpg",
          "title": "어떻게 이런걸!",
          "subTitle": "생각해냈을까?"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220223_10/e99ba0f7-23ef-489f-94ce-2bc091541166.jpg",
          "title": "론칭기념 1+1+1+1",
          "subTitle": "27만원 즉시 할인"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_10/3364fd0c-e3b5-4058-a14f-8f81a877babb.jpg",
          "title": "입어도 티 안나는",
          "subTitle": "민소매 1+1+1"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_15/3de55830-2580-4d5d-9fd0-4b25815e2251.jpg",
          "title": "여름팬츠 36종",
          "subTitle": "기간한정 8천원대"
        },
      ];

  List get menItemsPageTwo => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_8/f25cd2f2-8978-4397-b5d2-e9f6504aba6b.jpg",
          "title": "셔츠매니아 주목~",
          "subTitle": "자동다리미있다!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_20/da7bdfce-df51-4080-8216-b5aa22c975a8.jpg",
          "title": "확실히 안쓸때랑~",
          "subTitle": "피부가 달라요!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20210304_22/07b76d50-2a12-4f20-a2e2-0bc194c2b891.jpg",
          "title": "남성 바르고자니",
          "subTitle": "꿀피부 완성되네~"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_10/19fbeb15-0779-4ae4-b5f8-cd721dd6058f.jpg",
          "title": "친구차가 좋았던~",
          "subTitle": "결정적인 원인?"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220425_0/e7bc57dc-c56d-4c6f-bfb7-af87f6836818.jpg",
          "title": "브랜드 기능성",
          "subTitle": "폴로티 3종세트"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_8/04a97b3c-edfc-4a67-b179-d752ea04a6e5.jpg",
          "title": "지금 딱 필요한",
          "subTitle": "탠디 BEST 로퍼"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220204_16/9ec366b2-7f88-42db-bbb0-892536abf89c.jpg",
          "title": "병원 가지 말고",
          "subTitle": "진작에 이거 살걸"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220504_20/414bbf6b-e6ff-4706-a67a-f49e6354e187.jpg",
          "title": "리넨 스판벤딩",
          "subTitle": "81% 할인+무배"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_11/857d3b9d-1e6a-4e9e-a7f5-67466207e308.jpg",
          "title": "링클케어 셔츠가",
          "subTitle": "9천원대 할인중"
        },
      ];

  List get playFunItemsPageOne => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_27/7619e9c3-aad3-4da4-bbba-ce2e9c4be8fa.jpg",
          "title": "폰뿌",
          "desc": "이런거 본적있어?",
          "desc2": "놀라움의 연속이야!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_13/c95e7bf4-4de3-40a1-84fe-9788c5bc85d8.jpg",
          "title": "칸투칸",
          "desc": "홑겹 망사 기능성 메시 소재",
          "desc2": "여름철 열을 빼야 기가 산다."
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220519_22/dbbeb473-110c-456a-98e6-cd0a3da7943b.jpg",
          "title": "앱스토리몰",
          "desc": "자동으로 모기 잡는다?",
          "desc2": "충전식 무선 모기채"
        },
      ];

  List get playFunItemsPageTwo => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220511_6/4806e8ef-5742-461d-bcd4-b1bb8e3ac50d.jpg",
          "title": "맥도도 코리아",
          "desc": "꺼내자마자 다들 오~",
          "desc2": "어디서나 쏙 챙기는 필수템"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220519_10/be562038-8839-43a9-b100-6d7ec18300bf.jpg",
          "title": "비블랙",
          "desc": "스트레스 받아? 일단 돌려봐",
          "desc2": "돌리는 맛이 쏠쏠해"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220509_13/ee094bae-3a82-4301-97f0-050a2540c682.jpg",
          "title": "밸런스9",
          "desc": "36%할인, 기회놓치지마",
          "desc2": "경추베개중에 가장 편안해"
        },
      ];

  List get playFunItemsPageThree => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220419_20/d5a36fda-3508-44de-af71-5c2af7b9f230.jpg",
          "title": "바나나빌딩",
          "desc": "철물점 사장님이 개발한~",
          "desc2": "간편한 만능 드라이버키트"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220302_16/e6dacc11-840d-4c94-96ad-a325487da58e.jpg",
          "title": "폰뿌",
          "desc": "이게뭐길래? 혁신이야~",
          "desc2": "만든사람 천재인가?"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_18/d9ec8ec1-6527-4cfd-9c70-d8a4e19b3906.jpg",
          "title": "앱스토리몰",
          "desc": "좁은 틈까지 초강력 흡입",
          "desc2": "휴대용 무선 청소기"
        },
      ];

  List get toDaySaleZoneItemsOne => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_9/b2f3d1a0-3f1e-4665-8ddf-af1b346ef48f.jpg",
          "title": "스킨워시 무조건 증정",
          "percent": "22%",
          "price": "29,400원",
          "prevPrice": "38,000원"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220502_7/74db554c-4c29-4c2e-b7ad-f4b89f414e77.jpg",
          "title": "남여공용 등산 트레킹화",
          "percent": "49%",
          "price": "29,400원",
          "prevPrice": "49,000원"
        },
      ];

  List get toDaySaleZoneItemsTwo => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_13/5a70c012-8fdc-4f7a-939d-e727f485fd7c.jpg",
          "title": "위관리 핵심 4대원료!",
          "percent": "38%",
          "price": "39,800원",
          "prevPrice": "65,000원"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220427_11/00bd2b04-af2c-4e68-90cc-6f4d0cdd3618.jpg",
          "title": "미소페 43% ↓ 추천해~",
          "percent": "43%",
          "price": "79,000원",
          "prevPrice": "139,000원"
        }
      ];

  List get toDaySaleZoneItemsThree => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_27/6db44376-58d4-411a-9ddf-b1c4e3af8d37.jpg",
          "title": "스트레치 팬츠 65% SALE!",
          "percent": "65%",
          "price": "9,000원",
          "prevPrice": "26,400원"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220518_10/6da54b04-b70e-400a-b09e-0a2f45653467.jpg",
          "title": "500ml 바디워시 무료 증정",
          "percent": "22%",
          "price": "29,400원",
          "prevPrice": "38,000원"
        }
      ];
}
