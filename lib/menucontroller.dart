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
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F557%2F7557051.jpg%3Ftype%3Dr480Fll%26v%3D20220514175913%22&type=navermain_n96_96",
          "title": "YOU AND I",
          "person": "WSG워너비 조별경연(대청봉)",
          "num": 1,
          "album": "WSG워너비 조별경연 Part 1"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F555%2F7555689.jpg%3Ftype%3Dr480Fll%26v%3D20220513175908%22&type=navermain_n96_96",
          "title": "안녕이란 말",
          "person": "정승환",
          "num": 2,
          "album": "안녕이란 말"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F514%2F7514924.jpg%3Ftype%3Dr480Fll%26v%3D20220504102232%22&type=navermain_n96_96",
          "title": "TE AMO",
          "person": "미연((여자)아이들)",
          "num": 3,
          "album": "MY"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F534%2F7534859.jpg%3Ftype%3Dr480Fll%26v%3D20220507175913%22&type=navermain_n96_96",
          "title": "내게 단 한사람 (My Only One)",
          "person": "벤",
          "num": 4,
          "album": "내일 OST Part 5"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F510%2F7510971.jpg%3Ftype%3Dr480Fll%26v%3D20220427160808%22&type=navermain_n96_96",
          "title": "내일이 빛날 테니까",
          "person": "잔나비 최정훈, 이무진",
          "num": 5,
          "album":
              "[Vol.133] 유희열의 스케치북 With you : 여든 여섯 번째 목소리 '유스케 X 잔나비 최정훈&이무진'"
        },
      ];

  List get musicChartRight => [
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F514%2F7514924.jpg%3Ftype%3Dr480Fll%26v%3D20220504102232%22&type=navermain_n96_96",
          "title": "소나기",
          "person": "미연((여자)아이들)",
          "num": 6,
          "album": "MY"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F504%2F7504584.jpg%3Ftype%3Dr480Fll%26v%3D20220421115938%22&type=navermain_n96_96",
          "title": "기억상실",
          "person": "거미,원슈타인",
          "num": 7,
          "album": "싱포레스트"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F494%2F7494957.jpg%3Ftype%3Dr480Fll%26v%3D20220416115916%22&type=navermain_n96_96",
          "title": "비밀",
          "person": "김나은",
          "num": 8,
          "album": "Carusel"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F512%2F7512050.jpg%3Ftype%3Dr480Fll%26v%3D20220425204212%22&type=navermain_n96_96",
          "title": "아지랑이꽃",
          "person": "정동원",
          "num": 9,
          "album": "손편지"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusicmeta-phinf.pstatic.net%2Falbum%2F007%2F496%2F7496759.jpg%3Ftype%3Dr480Fll%26v%3D20220510141629%22&type=navermain_n96_96",
          "title": "인생찬가",
          "person": "임영웅",
          "num": 10,
          "album": "IM HERO"
        },
      ];

  List get mediaViewTwo => [
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220515_10%2FDbVEM_1652624226811Yaew7_JPEG%2F16712ab9-d442-4122-8ad5-a8e005f26ceb_B.jpg%22&type=nf464_260",
          "kind": "TV 예능",
          "content":
              "배우 윤여정의 본격 미국 스케쥴 시작! 캘리클락슨 쇼 대기실 대공개! (ft.캘리의 선물) | tvN 220515 방송",
          "media": "뜻밖의 여정",
          "time": "12시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220515_82%2FUhAiV_1652626322876Fj2m1_JPEG%2F643c3c6b-934f-4dea-88de-4f3359bb9d40.jpg%22&type=nf464_260",
          "kind": "TV 예능",
          "content": "박군♡한영, 미우새 막내의 달콤한 결혼식!",
          "media": "미운 우리 새끼",
          "time": "12시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220515_249%2FmqTib_1652617923951jPJx4_JPEG%2Fe760066c-c6e2-4be8-b90e-ebcbf7f2bce9_B.jpg%22&type=nf464_260",
          "kind": "TV 드라마",
          "content": "한지민에게 매일 걸려오는 전화의 정체...? | tvN 220515 방송",
          "media": "우리들의 블루스",
          "time": "13시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20200720_283%2FkQsIn_1595241613695GVJUQ_JPEG%2F1595241519203.jpg%22&type=nf464_260",
          "kind": "웹드라마",
          "content": "국뽕 차오르는 '갓 오브 하이스쿨' 애니메이션 속 서울 배경",
          "media": "네이버 웹툰",
          "time": "7분 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220515_168%2FzcNPu_1652624528662AzzPd_JPEG%2F320bb7d2-9063-4e69-8bfc-54b7d890475f_B.jpg%22&type=nf464_260",
          "kind": "TV 예능",
          "content":
              "＂선생님 수다 잘 떨고 오세요~＂ 윤여정 인생 최초 미국 토크쇼 출연기 #캘리클락슨쇼 | tvN 220515 방송",
          "media": "뜻밖의 여정",
          "time": "11시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20220209_64%2Fcp2Jv_16443928382761M5FD_PNG%2F1644392835685.png%22&type=nf464_260",
          "kind": "웹예능",
          "content": "[홀인러브] 혼란하다 혼란해..ㄷㄷ 첫날밤부터 바로 속마음 퍼팅?",
          "media": "홀인러브 (Hole in Love Part1)",
          "time": "7분 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fphinf.pstatic.net%2Ftvcast%2F20220317_145%2FDZjfY_1647513831140gueWA_PNG%2F1647510289245.png%22&type=nf464_260",
          "kind": "웹드라마",
          "content": "짝녀랑 키스했는데 이제 사귀는 건가요? [플렌즈] 서연대 22학번 편 - 최종화",
          "media": "플레이리스트 오리지널 PLAYLIST ORIGINALS",
          "time": "7분 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220515_254%2Fs1sPm_16526263257035dnJF_JPEG%2Fb0df864a-7b5a-4627-9380-f80f661ddedb.jpg%22&type=nf464_260",
          "kind": "TV 예능",
          "content": "미우새 멤버들, 축가 준비한 김종민 말에 당황!",
          "media": "미운 우리 새끼",
          "time": "12시간 전"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Ftvcast.phinf%2F20220515_75%2F3iOBk_1652624524409wbslv_JPEG%2F20220515_231038_629_1.jpg%22&type=nf464_260",
          "kind": "TV 드라마",
          "content": "[소망 엔딩] 시간이 지나도 손석구의 안녕을 바라는 김지원 | JTBC 220515 방송",
          "media": "나의 해방일지",
          "time": "11시간 전"
        }
      ];

  List get sliderOneItems => [
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220513_73%2F1652406578952Q2Vgi_JPEG%2F%25C4%25BF1.jpg%22&type=navermain_n260_260",
          "content": "한국 알앤비? 여기요! :  정기고, 김준원",
          "date": "2022.05.13"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220503_173%2F1651549292106wzORk_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "이주의 디깅 #133  싸이",
          "date": "2022.05.10"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220509_227%2F1652085055022A6Qck_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "New Release #91 :  임영웅, 잭 할로우",
          "date": "2022.05.09"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220502_290%2F1651465569274g8U5h_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "NEXTREND :  LE SSERAFIM(르세라핌)",
          "date": "2022.05.02"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220502_292%2F16514832670042KKuE_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "New Release #90 :  몬스타엑스, 샘 스미스",
          "date": "2022.05.02"
        },
      ];

  List get sliderTwoItems => [
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220427_103%2F1651049408329Li6Vt_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "한국 힙합/알앤비 이즈 고 :  릴모쉬핏, 엘로",
          "date": "2022.04.27"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220425_90%2F1650872783221ru59D_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "New Release #89 :  김성규, 키드 라로이",
          "date": "2022.04.25"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220421_227%2F1650530834205VEm4e_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "숏폼 콘텐츠의 전성시대 :  지코, 장기하",
          "date": "2022.04.21"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220419_181%2F1650332506262AfLRX_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "밴드 설SURL 이  신보를 낸다는 설",
          "date": "2022.04.19"
        },
        {
          "image":
              "https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fmusic-phinf.pstatic.net%2F20220418_3%2F1650271091286fOlcU_JPEG%2F%25C4%25BF%25B9%25F61.jpg%22&type=navermain_n260_260",
          "content": "New Release #88 :  온유, 제시",
          "date": "2022.04.18"
        },
      ];

  //   Body right 상품 아이템
  List get productHeader_1 => ["쿠팡", "G마켓", "옥션", "11번가", "티몬", "올리브영"];

  List get productHeader_2 =>
      ["위메프", "SSG닷컴", "GS샵", "롯데i몰", "CJ온스타일", "패션플러스"];

  List get productItemsPage_1 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_9/c699a8c4-ed08-4e37-a299-3fa6792c7020.jpg?type=f214_292",
          "title": "눈가보습 중요해",
          "subTitle": "이거하나로올킬",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220511_8/29df61f3-6956-4401-b4eb-97f4bf7fb48c.jpg?type=f214_292",
          "title": "젝시믹스1만원 ↓",
          "subTitle": "여름BEST신상특가",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_29/f1e03c1b-bf8c-43d7-971d-5623fa58ffaa.jpg?type=f214_292",
          "title": "교동짜장 92%할인",
          "subTitle": "1인분 500원!",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_21/6299133a-11ab-450f-b1ad-7a74422403a8.jpg?type=f214_292",
          "title": "물&도구 필요없는",
          "subTitle": "1만원대 세정티슈",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_1/8a3103ae-ba52-4853-ba5a-8b5bf5b0c30f.jpg?type=f214_292",
          "title": "반응폭발 신상!",
          "subTitle": "무배+역대급 SALE",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_11/04c99895-896d-4ef0-9820-bf7bb177d5b1.jpg?type=f214_292",
          "title": "예쁜봄시상가득",
          "subTitle": "러블리~코디세트",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_1/0ab89418-938a-4724-8c2f-274e657483e3.jpg?type=f214_292",
          "title": "돋보이는 아름다움",
          "subTitle": "극찬하는여름신상",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220511_0/92dbfe81-e4eb-4643-aeb3-cff9070723c7.jpg?type=f214_292",
          "title": "반응폭발 BEST",
          "subTitle": "세트로 코디완성!",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20210929_13/bc177b83-9b33-4e7d-9683-a5024d3f1e6f.jpg?type=f214_292",
          "title": "완벽승모근마사지",
          "subTitle": "마사지샵이제안가",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_9/2f7dd5fa-ef27-40c9-8728-f33b82b366d1.jpg?type=f214_292",
          "title": "태양을 피하는법",
          "subTitle": "자외선차단 안경!",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_26/cfdb5524-173c-4359-bf86-615eb7f86057.jpg?type=f214_292",
          "title": "토퍼침구 풀세트",
          "subTitle": "UpTo~84%파격세일",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220502_20/aa7c21e9-d99d-4990-b2f6-f44345ca1ea4.jpg?type=f214_292",
          "title": "BEST~ 인기폭발",
          "subTitle": "우린품격을입어요",
        },
      ];

  List get productItemsPage_2 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220511_22/d8fa3b01-1594-4ea2-826b-a87996209044.jpg?type=f214_292",
          "title": "1년치 쟁여둘기회",
          "subTitle": "라엘생리대 50%",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_6/c6273569-3228-428d-b63c-6bf578d4aa0f.jpg?type=f214_292",
          "title": "여름신상 10%할인",
          "subTitle": "전상품 무료배송",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_6/e814642c-6455-481b-90d5-b9782e77139d.jpg?type=f214_292",
          "title": "일상복으로도OK~!",
          "subTitle": "핏예쁜 운동복1+1",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_0/a1445543-8ca5-46bf-98e7-9431b8273c43.jpg?type=f214_292",
          "title": "역대급~히트!",
          "subTitle": "최대 80% SALE",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_0/57f461e2-ccd1-4bac-9d7d-98fe527db2fa.jpg?type=f214_292",
          "title": "아망떼 여름이불",
          "subTitle": "52% 초특가 할인",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_5/9f1b14e4-78ec-40ac-b533-93b68029e65f.jpg?type=f214_292",
          "title": "물대신 마셔봐~",
          "subTitle": "마법의 숫자 44티",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220208_14/cfc28024-a884-4933-bbbc-a043e13c6d34.jpg?type=f214_292",
          "title": "5월 특가오픈!",
          "subTitle": "14K 최대 30%할인",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220503_1/d9424fa1-e16f-4b07-8cdd-98c23a65d433.jpg?type=f214_292",
          "title": "반응폭발 원피스",
          "subTitle": "BEST후기극찬!",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220315_14/800e4477-4c90-4240-806b-b5a4c1b6ce51.jpg?type=f214_292",
          "title": "차오르는 모발",
          "subTitle": "지금 58% 할인",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_24/4447fbe4-5ac2-456f-91f8-b766684a8ac5.jpg?type=f214_292",
          "title": "미소페 인기HOT",
          "subTitle": "지금 43% SALE",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_8/3807b361-44d6-4620-b082-bed5fbcf38be.jpg?type=f214_292",
          "title": "인견이불 하나로~",
          "subTitle": "잠자리가 시원해~",
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220509_14/2b200ddf-d53d-41b4-a0b5-2fbdf2c54978.jpg?type=f214_292",
          "title": "빨래가 안깨끗해?",
          "subTitle": "세탁기부터청소해",
        },
      ];

  List get productItemsPage_3 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220511_22/d8fa3b01-1594-4ea2-826b-a87996209044.jpg?type=f214_292",
      "title": "1년치 쟁여둘기회",
      "subTitle": "라엘생리대 50%",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220517_6/c6273569-3228-428d-b63c-6bf578d4aa0f.jpg?type=f214_292",
      "title": "여름신상 10%할인",
      "subTitle": "전상품 무료배송",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220516_6/e814642c-6455-481b-90d5-b9782e77139d.jpg?type=f214_292",
      "title": "일상복으로도OK~!",
      "subTitle": "핏예쁜 운동복1+1",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220516_0/a1445543-8ca5-46bf-98e7-9431b8273c43.jpg?type=f214_292",
      "title": "역대급~히트!",
      "subTitle": "최대 80% SALE",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220517_0/57f461e2-ccd1-4bac-9d7d-98fe527db2fa.jpg?type=f214_292",
      "title": "아망떼 여름이불",
      "subTitle": "52% 초특가 할인",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220513_5/9f1b14e4-78ec-40ac-b533-93b68029e65f.jpg?type=f214_292",
      "title": "물대신 마셔봐~",
      "subTitle": "마법의 숫자 44티",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220208_14/cfc28024-a884-4933-bbbc-a043e13c6d34.jpg?type=f214_292",
      "title": "5월 특가오픈!",
      "subTitle": "14K 최대 30%할인",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220503_1/d9424fa1-e16f-4b07-8cdd-98c23a65d433.jpg?type=f214_292",
      "title": "반응폭발 원피스",
      "subTitle": "BEST후기극찬!",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220315_14/800e4477-4c90-4240-806b-b5a4c1b6ce51.jpg?type=f214_292",
      "title": "차오르는 모발",
      "subTitle": "지금 58% 할인",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220516_24/4447fbe4-5ac2-456f-91f8-b766684a8ac5.jpg?type=f214_292",
      "title": "미소페 인기HOT",
      "subTitle": "지금 43% SALE",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220517_8/3807b361-44d6-4620-b082-bed5fbcf38be.jpg?type=f214_292",
      "title": "인견이불 하나로~",
      "subTitle": "잠자리가 시원해~",
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220509_14/2b200ddf-d53d-41b4-a0b5-2fbdf2c54978.jpg?type=f214_292",
      "title": "빨래가 안깨끗해?",
      "subTitle": "세탁기부터청소해",
    },
  ];











  //쇼핑뉴스 아이템들
  List get shoppingItems_1 => [
        {"shop": "헬렌", "content": "예쁜신상데일리룩 최대 70% ↓"},
        {"shop": "에픽테토스", "content": "효과없으면 환불! 허범철 보습세트"},
        {"shop": "젝시믹스", "content": "한여름까지시원한 4.5부쇼츠1+1특가"},
        {"shop": "서울샵", "content": "중소기업 우수 추천상품 모음전"},
        {"shop": "울산상회", "content": "울산경제진흥원 중소기업상품추천"},
        {"shop": "브리스톤코리아", "content": "여름철 인기 HOT! 바캉스 패션시계~"},
        {"shop": "경기행복샵", "content": "경기테크노파크와 중소기업착한소비"},
      ];

  List get shoppingItems_2 => [
        {"shop": "라라스윗", "content": "생우유 50%함유 모나카 최대41% ↓"},
        {"shop": "고라니프렌즈", "content": "가벼운덴탈마스크 5월에만 3+1 GET"},
        {"shop": "다채몰", "content": "힘내라 대구 소상공인 힘내라"},
        {"shop": "코데즈이너웨어", "content": "여름속옷사야할때 UP TO 50% SALE"},
        {"shop": "티몬", "content": "만원의행복기획전 전상품 무료배송"},
        {"shop": "미스유", "content": "역대급 여름신상 최대 90% SALE"},
        {"shop": "폰뿌", "content": "인기HOT케이스 사용하면놀랄걸?"},
      ];

  List get shoppingItems_3 => [
        {"shop": "JAJA", "content": "무더운 여름대비! 얼음베개 56% ↓"},
        {"shop": "포켓도시락", "content": "식단스트레스NO! 저칼로리한끼식단"},
        {"shop": "원쁠딜", "content": "전상품 1+1 무료배송 득템"},
        {"shop": "일상공감", "content": "집에서셀프수선! 1+1 67%할인"},
        {"shop": "옥션", "content": "최고의 쇼핑축제! 옥션빅스마일데이"},
        {"shop": "어나더박스", "content": "피부과 안다녀도 모공이 좁아져~"},
        {"shop": "나나살롱", "content": "BEST 핫딜 10% ↓ 극찬~ 화사한 코디"},
      ];

  List get shoppingItems_4 => [
        {"shop": "코데즈이너웨어", "content": "여름속옷사야할때 UP TO 50% SALE"},
        {"shop": "에픽테토스", "content": "효과없으면 환불! 허범철 보습세트"},
        {"shop": "마리앙플러스", "content": "실시간 여름인기 신상SALE"},
        {"shop": "다이닝마켓", "content": "탱글탱글 쫄깃한 14만리뷰 소곱창"},
        {"shop": "견사돌", "content": "치석~눈,관절까지 복합기능성영양제"},
        {"shop": "게스언더웨어", "content": "여름속옷 컬렉션 최대 50% SALE"},
        {"shop": "유니프랜드", "content": "타임특가 4,900원 실속구매1+1+1"},
      ];

  List get shoppingItems_5 => [
        {"shop": "일상공감", "content": "집에서셀프수선! 1+1 67%할인"},
        {"shop": "에픽테토스", "content": "효과없으면 환불! 허범철 보습세트"},
        {"shop": "옥션", "content": "최고의 쇼핑축제! 옥션빅스마일데이"},
        {"shop": "어나더박스", "content": "피부과 안다녀도 모공이 좁아져~"},
        {"shop": "폰뿌", "content": "인기HOT케이스 사용하면놀랄걸?"},
        {"shop": "브리스톤코리아", "content": "여름철 인기 HOT! 바캉스 패션시계~"},
        {"shop": "코데즈이너웨어", "content": "여름속옷사야할때 UP TO 50% SALE"},
      ];

  List get shoppingItems_6 => [
        {"shop": "마리앙플러스", "content": "실시간 여름인기 신상SALE"},
        {"shop": "다이닝마켓", "content": "탱글탱글 쫄깃한 14만리뷰 소곱창"},
        {"shop": "젝시믹스", "content": "한여름까지시원한 4.5부쇼츠1+1특가"},
        {"shop": "서울샵", "content": "중소기업 우수 추천상품 모음전"},
        {"shop": "게스언더웨어", "content": "여름속옷 컬렉션 최대 50% SALE"},
        {"shop": "브리스톤코리아", "content": "여름철 인기 HOT! 바캉스 패션시계~"},
        {"shop": "견사돌", "content": "치석~눈,관절까지 복합기능성영양제"},
      ];

  // Product 패션, 라이프, 뷰티, 디지털레저 아이템들
  //패션
  List get productFashionItems_1 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220425_0/b3f3e46f-a528-4c04-90de-5bff4f68c554.jpg",
          "content": "무료배송 + 2만원대 SALE"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220419_2/2973f1b7-31bd-400c-a556-c259c5929510.jpg",
          "content": "1만원대 베이직 반팔니트"
        },
      ];

  List get productFashionItems_2 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_2/31f2e3c1-b433-4e77-bde6-77bc0c3e4d62.jpg",
          "content": "에르아 원피스"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_2/c1ffe36e-875e-4da9-8a48-d3db93775854.jpg",
          "content": "예쁨이~ 폭발하네~"
        },
      ];

  List get productFashionItems_3 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220421_19/1296f4e1-873d-4104-8908-a911eb9821b5.jpg",
          "content": "MADE 포터싱글재킷"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_21/e8a20c4c-23eb-4f3a-a0dc-de1c1327038b.jpg",
          "content": "고품격~ 차원이 다른 슈즈"
        },
      ];

  List get productFashionItems_4 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220509_27/cf0b6dbd-e01b-45c4-84f7-3b02a220618e.jpg",
          "content": "UP TO~최대 90% 세일중!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_20/d5cb10f6-bef5-4bd6-a4cb-8121349f4e6b.jpg",
          "content": "사랑스러워~플라워 원피스"
        },
      ];

  List get productFashionItems_5 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_12/05bc96ac-7188-4746-bcf6-f1f996d76e7b.jpg",
          "content": "러블리 반팔 블라우스"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_20/ecd630ed-194a-4262-af9a-0329cae4f1c4.jpg",
          "content": "타임세일 최대 70%"
        },
      ];

  List get productFashionItems_6 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220419_0/ca5a528e-2bfc-48d9-b708-02c84ad28ec7.jpg",
          "content": "지금 61% SALE 미들힐슈즈"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_12/b90a2b11-b8c6-414f-b745-46303fa338bc.jpg",
          "content": "세컨스킨 모달 튜브드레스"
        },
      ];

  List get productFashionItems_7 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220510_5/f2eb1daa-80f6-4304-919e-6c14b512f1e3.jpg",
          "content": "봄신상한가득!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_11/13f77ead-b377-4e0c-aa71-1829c4c75e99.jpg",
          "content": "여름까지 데일리한 포인트"
        },
      ];

  List get productFashionItems_8 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_25/c75b6224-e20b-4264-9813-fa4e7872cff7.jpg",
          "content": "야옹이작가 PICK 땀복 1+1"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_9/e6a9e6bb-8dda-479c-b00c-a4ec63d573e6.jpg",
          "content": "실시간best 리넨티셔츠"
        },
      ];

  List get productFashionItems_9 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220304_2/449fbc61-20ee-4de0-b6ac-01b3bc7d3c76.jpg",
          "content": "봄에 딱 좋아! 독보적착화"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_5/3150d775-7dac-4e82-971f-993c0e2c25a6.jpg",
          "content": "편하고예뻐트임팬츠"
        },
      ];

  List get productFashionItems_10 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_8/14c735c6-37ef-4e16-b20b-a11856c4e812.jpg",
          "content": "브랜드 퀄리티~정말극찬해"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_2/e17438ef-01b6-40e6-b12b-81f221b7414d.jpg",
          "content": "특별함 그 이상의 가치"
        },
      ];

  //라이프
  List get productLifeItems_1 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220413_21/b78019a8-0b59-4bfb-b736-63bce5c8df74.jpg",
          "content": "옆집에서 보고 따라샀어!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_12/1f96d7a0-f7e5-4aae-8f7e-9968f1eb89e6.jpg",
          "content": "꼬이지 않는 샤워호스!"
        },
      ];

  List get productLifeItems_2 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_12/7fd27aaa-37cc-4d87-9e18-38473fc4e4dc.jpg",
          "content": "직장인들~커피랑 먹어봐!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220414_8/75251e34-fa5b-45c4-8a70-e5224ca8d57e.jpg",
          "content": "2022 시원한 여름침대패드"
        },
      ];

  List get productLifeItems_3 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220511_7/cf2e9ef3-ac43-4459-a44a-aee1981afe8a.jpg",
          "content": "알러지케어 침대패드 SALE"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_26/3f552298-8b80-4f16-859f-669c1315e9d6.jpg",
          "content": "이제 여름이야! 시작해"
        },
      ];

  List get productLifeItems_4 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_1/d8d1fab2-1ab8-4e21-b0e8-543e7dc03f6c.jpg",
          "content": "귀여운 스누피마스크 출시"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_1/3a491005-ad4f-4e17-9ac0-4167f47e5e00.jpg",
          "content": "이제 마음편히 달콤하세요"
        },
      ];

  List get productLifeItems_5 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220504_27/1e68d256-9431-4578-83b9-779cb26f9f7d.jpg",
          "content": "굳은목엔 시원시원 알파넥"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220516_7/37102cb3-7a1d-431e-a620-6f8a2fb2c46e.jpg",
          "content": "국산콩 무첨가 두유 62% ↓"
        },
      ];

  List get productLifeItems_6 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220513_13/e7dc9aa0-5fb7-4d3f-8375-86652c98278b.jpg",
          "content": "교동사골곰탕 1+1+1+1+1+1"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220504_0/ae3d4310-75e6-4b4e-83cb-a8670bcfe3a1.jpg",
          "content": "유기농생리대 50%할인"
        },
      ];

  List get productLifeItems_7 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220509_27/4e95cce1-756f-4b02-b5cb-d5e578c61845.jpg",
          "content": "오미자 원액 99.98%"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20210723_3/794d9f40-4f54-46bf-a1cb-9d6fc60de985.jpg",
          "content": "과음전후 든든 숙취 해소제"
        },
      ];

  List get productLifeItems_8 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220429_27/65bee85d-57d2-47f0-8b1e-c850e603a8b0.jpg",
          "content": "수돗물 낵새가 안나요~"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220517_2/1c7df580-2464-49a6-8fae-409b7cb4edd7.jpg",
          "content": "피부톤에 맞는 색감 골라~"
        },
      ];

  List get productLifeItems_9 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220512_23/27ecb968-ee27-47af-83c4-9ae6c1740e84.jpg",
          "content": "완전 귀여운 쿠션 여기야!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220418_8/695ba43f-eb7f-4845-8725-929bff870be3.jpg",
          "content": "시원한 기능성 쿨링패드"
        },
      ];

  List get productLifeItems_10 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220510_11/7a629f2d-b619-4b32-bc26-30bd6f312e5d.jpg",
          "content": "폭신폭신~ 포근한 꿀잠템!"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220511_26/69da1bca-d793-43bc-9851-7840f67e6cfa.jpg",
          "content": "집밥처럼! 임성근 짜글이"
        },
      ];

//뷰티

  List get productBeautyItems_1 => [
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220511_2/aafd437c-6cba-4c77-9dff-849687d294bd.jpg",
          "content": "33%특가 바디워시로션세트"
        },
        {
          "image":
              "https://s.pstatic.net/shopping.phinf/20220303_27/fc887e21-26e5-4cf2-bfae-aaf7e011e81f.jpg",
          "content": "인기클렌징 1+1+1+1 특가!"
        },
      ];
  List get productBeautyItems_2 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220509_5/56d6beb3-50a2-48b5-a00a-4dbe25f735e9.jpg",
      "content": "약국판매 잡티크림 50%"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20210609_23/99ba908e-65c7-4ca4-9b96-f08ba30588d2.jpg",
      "content": "지금 허벅지 확인해봐!"
    },
  ];
  List get productBeautyItems_3 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220513_9/31b70a4e-8628-450b-9621-75dc08b5dcec.jpg",
      "content": "샌들신기전 각질관리 필수"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220104_10/effc46da-9ba8-4d3f-8553-349e62170f15.jpg",
      "content": "뽀득뽀득 약산성 멘돌비누"
    },
  ];
  List get productBeautyItems_4 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220509_5/56d6beb3-50a2-48b5-a00a-4dbe25f735e9.jpg",
      "content": "약국판매 잡티크림 50%"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220322_3/4d9856bc-3f8e-4bcd-8c45-a6fd753cc51f.jpg",
      "content": "차오르는 모발 바이브랩"
    },
  ];
  List get productBeautyItems_5 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220408_24/a703d8cb-39e5-4a98-9cc8-838b77b0e780.jpg",
      "content": "각질 끝! 롱래스팅젤 2+1"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220406_24/d6733adc-f33b-4800-bb58-5e56b0ed5c98.jpg",
      "content": "생생한 물광밀착"
    },
  ];
  List get productBeautyItems_6 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220215_29/5074a362-cb2f-42cf-a6eb-b749b81caf17.jpg",
      "content": "후기로 증명 예비신부 크림"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20210528_10/bf9118ce-d658-4697-933c-fcbb54dfc510.jpg",
      "content": "선크림만 발라도 생기발랄"
    },
  ];
  List get productBeautyItems_7 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220303_13/419408b8-ad79-42f0-b700-552061a91c05.jpg",
      "content": "탱글탱글~목주름패치"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220214_24/bbc7aa17-cb64-408c-9ae1-61ec3668d807.jpg",
      "content": "놀라운효과! 회복패드1+1"
    },
  ];
  List get productBeautyItems_8 => [
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220511_0/19ec88e8-3405-45d9-a56a-ce9f81602e34.jpg",
      "content": "화장 잘 먹는 꿀피부 비결"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220513_9/31b70a4e-8628-450b-9621-75dc08b5dcec.jpg",
      "content": "샌들신기전 각질관리 필수"
    },
  ];

  // 디지털 레저

  List get productDigitalItems_1 =>[
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220504_15/ae2df0db-ef2e-4c21-b388-5bf5dfc1bc00.jpg",
      "content": "아령도 거뜬! 손목보호대"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220426_17/a6a2d31d-c150-4e78-a055-4e9079d4e5be.jpg",
      "content": "슬림라인 레깅스1+1"
    }
  ];

  List get productDigitalItems_2 =>[
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220517_28/8652c463-732e-484a-b3c4-d6418f182f06.jpg",
      "content": "홈케어 끝판왕"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220510_5/459252d5-6dde-4332-bb05-9ea8b21348b2.jpg",
      "content": "골프룩 뭐살지 고민?"
    }
  ];
  List get productDigitalItems_3 =>[
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20210906_19/fa30bd62-3a59-4081-9849-723c1644af54.jpg",
      "content": "어? 무릎이 안 아프네!"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20210429_2/740717e2-f6fa-4b38-bb72-83e017f8ba80.jpg",
      "content": "16컬러 향균99% 마스크2+1"
    }
  ];
  List get productDigitalItems_4 =>[
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220225_17/7c5e1c80-1013-461c-9dd6-6bb528b387c2.jpg",
      "content": "주목! 탄수화물 40% 감소"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20210203_18/fc938b9f-4827-44be-b536-3c4b505acf28.jpg",
      "content": "홈트해야지? 요가삭스1+1"
    }
  ];
  List get productDigitalItems_5 =>[
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220224_0/54698321-814e-4f38-980d-b46039b623b9.jpg",
      "content": "이런게 있다니? 신세계야!"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220510_6/9e382df3-5552-4101-8f7b-6926db1767f4.jpg",
      "content": "공식스토어 특별 혜택!"
    }
  ];
  List get productDigitalItems_6 =>[
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220516_17/402e8e50-aceb-4c46-b38e-5dba002d6ef5.jpg",
      "content": "골프웨어 3종 4만원대!"
    },
    {
      "image":
      "https://s.pstatic.net/shopping.phinf/20220429_19/3b178ad0-9700-4540-b3a8-757613ef4fdf.jpg",
      "content": "이런 케이스 봤어?"
    }
  ];


  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
