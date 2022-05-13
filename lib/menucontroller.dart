import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;

  //1번째 언론사
  List get mediaOneItems_1 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/422.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/314.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/028.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/139.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/002.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/076.png",
      ];

  List get mediaOneItems_2 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/327.png",
        "https://s.pstatic.net/static/newsstand/up/2021/0824/nsd115034872.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/092.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/277.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/904.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/366.png",
      ];

  List get mediaOneItems_3 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/047.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/117.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/052.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/964.png",
        "https://s.pstatic.net/static/newsstand/up/2022/0328/nsd22503109.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/982.png",
      ];

  List get mediaOneItems_4 => [
        "https://s.pstatic.net/static/newsstand/up/2022/0405/nsd15024245.png",
        "https://s.pstatic.net/static/newsstand/up/2020/0803/nsd20247547.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/972.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/539.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/396.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/143.png",
      ];

  // 2번째 언론사
  List get mediaTwoItems_1 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/326.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/032.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/003.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/214.png",
        "https://s.pstatic.net/static/newsstand/up/2020/0903/nsd185255316.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/327.png",
      ];

  List get mediaTwoItems_2 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/327.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/330.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/005.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/215.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/930.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/029.png",
      ];

  List get mediaTwoItems_3 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/308.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/008.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/241.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/911.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/973.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/920.png",
      ];

  List get mediaTwoItems_4 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/328.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/363.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/963.png",
        "https://s.pstatic.net/static/newsstand/up/2020/1229/nsd165811867.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/340.png",
        "https://s.pstatic.net/static/newsstand/up/2021/0211/nsd01153196.png",
      ];

  //3번째 언론사
  List get mediaThreeItems_1 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/031.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/009.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/079.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/016.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/020.png",
        "https://s.pstatic.net/static/newsstand/up/2020/0708/nsd94830278.png",
      ];

  List get mediaThreeItems_2 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/030.png",
        "https://s.pstatic.net/static/newsstand/up/2022/0208/nsd16121208.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/015.png",
        "https://s.pstatic.net/static/newsstand/up/2020/0610/nsd151458769.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/018.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/057.png",
      ];

  List get mediaThreeItems_3 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/376.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/293.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/038.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/913.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/981.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/417.png",
      ];

  List get mediaThreeItems_4 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/417.png",
        "https://s.pstatic.net/static/newsstand/up/2022/0318/nsd13456546.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/962.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/807.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/243.png",
        "https://s.pstatic.net/static/newsstand/up/2021/0211/nsd0427277.png",
      ];

  // 4번째 언론사
  List get mediaFourItems_1 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/021.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/055.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/014.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/056.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/368.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/022.png",
      ];

  List get mediaFourItems_2 => [
        "https://s.pstatic.net/static/newsstand/2019/logo/011.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/421.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/928.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/825.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/989.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/024.png",
      ];

  List get mediaFourItems_3 => [
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/040.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/910.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/384.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/941.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/908.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/135.png",
      ];

  List get mediaFourItems_4 => [
        "https://s.pstatic.net/static/newsstand/up/2021/1112/nsd10248812.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/969.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/956.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/934.png",
        "https://s.pstatic.net/static/newsstand/2020/logo/light/0604/447.png",
        "https://s.pstatic.net/static/newsstand/up/2021/1221/nsd15292271.png",
      ];

  List<String> get menuItems =>
      ["엔터", "스포츠", "자동차", "웹툰", "경제M", "추천구독", "레시피", "리빙"];

  List<String> get linkItems =>
      ["네이버 NOW", "네이버 TV홈", "TOP100", "시리즈온", "V LIVE", "VIBE"];

  List get mediaViewOne => [
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20220401_21%2F0Lcap_1648801425201P2zoD_JPEG%2F1648801414942.jpg%22&type=nf464_260",
          "kind": "웹드라마",
          "content": "'좀비딸' 애니 1분 미리보기 - 🚨좀비수아 깜놀주의🧟‍♀️🧟‍♀️🚨",
          "media": "네이버 웹툰",
          "time": "6분전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220510_98%2FikL5A_1652185711586qJO0W_JPEG%2F1652185636128.jpg%22&type=nf464_260",
          "kind": "TV 드라마",
          "content": "[전체관람가+: 숏버스터] 액션 소리 한 번에 살벌해지는 찐배우 김소연 | 3화 선공개",
          "media": "티빙(TVING)",
          "time": "어제"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220511_38%2FKWI6E_16522777316639QcFF_JPEG%2F799e6e61-b446-42a3-b5d7-53013e1ceb60_B.jpg%22&type=nf464_260",
          "kind": "TV 예능",
          "content": "1학년 후배들을 위한 학교생활 꿀팁만 모았다! 멋진 9살 선배 자기님들♡#highlight",
          "media": "유 퀴즈 온 더 블럭",
          "time": "16시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220512_6%2F8Xea9_1652282525217sM5bx_JPEG%2F20220512_000703_212_1.jpg%22&type=nf464_260",
          "kind": "TV 드라마",
          "content":
              "[단독 선공개] 캠핑장으로 도망치는 추자현, 이요원에게 도움 요청... │〈그린마더스클럽〉 5/12(목) 밤 10시 30분 방송",
          "media": "그린마더스클럽",
          "time": "5시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20220209_39%2Fv7fJd_164438162266270Jhm_PNG%2F1644381616731.png%22&type=nf464_260",
          "kind": "웹예능",
          "content": "[홀인러브] 차갑게만 보이던 그녀는 스윗한 ‘가죽공방 선생님’?😲",
          "media": "홀인러브 (Hole in Love Part1)",
          "time": "6분 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20220208_90%2FZ7uWG_1644314034580RHv4q_PNG%2F1644313896713.png%22&type=nf464_260",
          "kind": "웹예능",
          "content": "[홀인러브] 등장 한 번에 모든 시선 집중 시킨 그녀의 아우라✨",
          "media": "홀인러브 (Hole in Love Part1)",
          "time": "6분 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20200904_209%2FFLtkn_1599215054282sYvTn_JPEG%2F1599215041926.jpg%22&type=nf464_260",
          "kind": "웹드라마",
          "content": "(공식) 2020 네이버 웹툰 3번째 대작애니! ‘노블레스’ coming soon",
          "media": "네이버 웹툰",
          "time": "6분 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220512_204%2FAS17U_1652317331163AJ5xO_JPEG%2Fca4aeaf0-5f2b-4cbc-bef5-7313430d315e_B.jpg%22&type=nf464_260",
          "kind": "TV 예능",
          "content": "[단독 선공개] OMG! 김혜수의 마트 알바 1일차 찐 후기는?! ㅋㅋㅋ",
          "media": "어쩌다 사장2",
          "time": "7시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20220209_239%2FLcGFB_1644382713037NEMLx_PNG%2F1644382704930.png%22&type=nf464_260",
          "kind": "웹예능",
          "content": "[홀인러브] 역대급 ‘직진’남 김강열도 반한 매너남의 ‘정.석’ (ft. 티슈)",
          "media": "홀인러브 (Hole in Love Part1)",
          "time": "6분 전"
        }
      ];



  List get musicChartLeft => [
    { "image":"https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F548%2F7548505.jpg%3Ftype%3Dr480Fll%26v%3D20220510175912%22&type=navermain_n96_96" ,
      "title":"초록을거머쥔우리는","person":"잔나비","num":1
    },
    { "image":"https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F534%2F7534867.jpg%3Ftype%3Dr480Fll%26v%3D20220508175915%22&type=navermain_n96_96" ,
      "title":"울지 않을게","person":"선예", "num":2
    },
    { "image":"https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F524%2F7524168.jpg%3Ftype%3Dr480Fll%26v%3D20220503175913%22&type=navermain_n96_96" ,
      "title":"너랑","person":"멜로망스", "num":3
    },
    { "image":"https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F548%2F7548505.jpg%3Ftype%3Dr480Fll%26v%3D20220510175912%22&type=navermain_n96_96" ,
      "title":"레이디버드","person":"잔나비" ,"num":4
    },
    { "image":"https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F534%2F7534857.jpg%3Ftype%3Dr480Fll%26v%3D20220509175912%22&type=navermain_n96_96" ,
      "title":"내일이 빛날 테니까","person":"인순이, 박보람","num":5
    },
  ];






















  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
