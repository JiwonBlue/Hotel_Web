<%@ page contentType="text/html;charset=utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body class="subBody"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div><link href="/css/mem/common.css" rel="stylesheet" type="text/css">
    <link href="/css/mem/title_ko.css" rel="stylesheet" type="text/css">
    <link href="/css/mem/common/print.css" rel="stylesheet" type="text/css" media="print">
    <link href="/css/mem/mainImages_ko.css" rel="stylesheet" type="text/css">
    <link href="/css/mem/common/reserve_new.css" rel="stylesheet" type="text/css">
    <link href="/css/mem/common/lang-ko_N.css" rel="stylesheet" type="text/css">
    <link href="/css/mem/common/btn_ko.css" rel="stylesheet" type="text/css">
    <link href="/css/common/swiper.min.css" rel="stylesheet" type="text/css">
    <script src="/js/json2.js" charset="UTF-8"></script>
    <script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
    <script src="/js/uniform.js" charset="UTF-8"></script>
    <script src="/js/browser.js" charset="UTF-8"></script>
    <script src="/js/style.hub.js" charset="UTF-8"></script>
    <script src="/js/swiper.min.js"></script>
    <script src="/js/style.advance.js" charset="UTF-8"></script><!-- 개선 : js 추가 -->
    <script src="/js/resv/advResvCalendar.js" charset="UTF-8"></script> <!-- [2019_모션추가]3 달력 고도화 -->
    <script src="/index.do/secu/messageJs.do" charset="UTF-8"></script>
        <script src="/js/common.js" charset="UTF-8"></script>
    <script src="/js/commonEx.js" charset="UTF-8"></script>
    <script src="/js/jquery.slides.js" charset="UTF-8"></script>
    <script src="/js/mbr/popLogin.js" charset="UTF-8"></script><div id="popLoginDiv" class="popLogin" style="display:none"></div>
    <script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
    <script src="/js/mbr/mbshPointRead.js" charset="UTF-8"></script><div id="mbshPotinRead" style="display:none"></div>
    <script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resvPromotionCalendar.js" charset="UTF-8"></script><script src="/js/resv/resv.js?dt=20230817" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script><script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div><script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div><script src="/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
    <script src="/js/placeholders.js" charset="UTF-8"></script>
    <script src="/js/rewards_new2020.js" charset="UTF-8"></script>
    <script src="/js/dining_new2020.js" charset="UTF-8"></script>
    <!--[if IE 6]><script src="/js/png24.js"></script><![endif]-->
    
    <script type="text/javascript">
    
        </script>
    
    <!-- 운영인 경우만 Google Analytics 호출 -->
    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-T3LBJ26');</script>
    <!-- End Google Tag Manager -->
    
    <!-- Global site tag (gtag.js) - Google Analytics -->
    
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-119797985-1"></script>
    
    <script>
    
      window.dataLayer = window.dataLayer || [];
    
      function gtag(){dataLayer.push(arguments);}
    
      gtag('js', new Date());
    
     
    
      gtag('config', 'UA-119797985-1');
    
    </script>
    
    
    
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    
    <dl class="skipNavi">
        <dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd></dl>
    <div class="subWrap subWrapHub">
        
        <div class="head headHub">
            <script type="text/javascript">
        $(document).ready(function(){
            $(".findBtn a").click(function(){
                 $(".findBox").slideToggle("fast");
            });
        });
        function ssoLogout() {
            location.href = "/membership/login/SSOLogout.do";
    
        }
        $( "#benefitBtn" ).click(function() {
              $( "#showCardbox" ).show( "slow" );
              $( "#hiddencardbox" ).hide( "slow" );
        });
    </script>
    
    <script>
        document.oncontextmenu = function(){ // 컨텍스트 메뉴금지
            return false;
        };
    </script>
    
    <div class="header">
      <h1 class="logo"><a href="/index.do">THE SHILLA HOTELS &amp; RESORTS</a></h1>
      <!-- 로그인 -->
      <span class="loginArea">
        <a href="/membership/mbr/login/memLogin.do">로그인</a>
        <a href="/mem/mbr/join/memViewBrowsewrap.do">신라리워즈 가입</a>
        </span>
      <!-- 예약확인 추가 -->
      <div class="resvConfirm">
              <div class="resvConBox">
                  <a class="btn" href="#">예약확인<!-- 예약확인 --></a>
                  <ul class="list" style="display: none;">
                      <li class="dn1 first last">
                          <ul class="listSt">
                              <li class="st first st1">
                                  <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=R"><span>객실<!-- 객실 --></span></a>
                              </li>
                              <li class="st last st2">
                                    <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=D"><span>다이닝<!-- 다이닝 --></span></a>
                              </li>
                          </ul>
                      </li>
                  </ul>
              </div>
          </div>
      <!-- 예약확인 추가 -->
      <!-- 한국어 영어 일어 시작  -->
        <div class="language">
            <div class="globalBox">
                <a class="btn" href="#">한국어</a><ul class="list" style="display: none;">
                    <li class="dn1 first last">
                        <ul class="listSt">
                            <li class="st first st3"><a href="/hub/cmm/setLang.do?lang=en"><span>English</span></a></li><li class="st st4"><a href="/hub/cmm/setLang.do?lang=ja"><span>日本語</span></a></li><li class="st last st5"><a href="/hub/cmm/setLang.do?lang=zh"><span>简体中文</span></a></li></ul>
                    </li>
                </ul>
            </div>
        </div>
        <script type="text/javascript">
            jQuery(function() {
                jQuery('.dn1 > ul > li').each(function(idx) {
                    jQuery(this).addClass('st'+(idx+1));
                });
            });
        </script>
    
        <!-- Find a hotel 시작 -->
        <div class="hotelBox_wrap"><!-- 개선 : class="hotelBox_wrap"변경 -->
            <a class="btn" href="javascript:void(0);">호텔찾기 콤보상자</a>
    
            <!-- 개선 : 호텔찾기 -->
            <div class="hotelBox_N">
                <div class="hHead">
                    <ul class="htTab">
                           <li class="tab2 on first"><a href="#"><span>권역별</span></a></li>
                        <li class="tab1  last"><a href="#"><span>브랜드별</span></a></li><!-- a 선택시 li class on 추가 -->
                    </ul>
                </div>
    
                <!-- 권역별 -->
                <div class="hCon" style="display:block;">
                    <div class="list2">
                        <dl>
                            <dt><a href="#"><img src="/images/ko/mem/new_2019/main_tab2_tit1.gif" alt="국내"></a></dt>
                            <dd>
                                <strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit1.gif" alt="서울 강북"></strong>
                                <ul>
                                    <li class="first"><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
                                                        <li><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
                                                            <li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
                                                            <li class="last"><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
                                                            </ul>
                            </dd>
                            <dd>
                                <strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit2.gif" alt="서울 강남"></strong>
                                <ul>
                                    <li class="first"><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
                                                            <li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
                                                            <li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
                                                            <li class="last"><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
                                                            </ul>
                            </dd>
                            <dd>
                                <strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit3.gif" alt="전국"></strong>
                                <ul>
                                    <li class="first"><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
                                                        <li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
                                                            <li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
                                                            <li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
                                                            <li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
                                                            <li><a href="https://www.shillastay.com/seobusan/index.do?lang=ko">신라스테이 서부산</a></li>
                                                            <li><a href="https://www.shillastay.com/yeosu/index.do?lang=ko">신라스테이 여수</a></li>
                                                            <li class="last"><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
                                                        </ul>
                            </dd>
                        </dl>
                        <dl>
                            <dt><a href="#"><img src="/images/ko/mem/new_2019/main_tab2_tit2.gif" alt="해외"></a></dt>
                            <dd>
                                <strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit4.gif" alt="베트남"></strong>
                                <ul>
                                    <li class="first last"><a href="https://www.shillamonogram.com/dnmg/index.do?lang=ko">신라모노그램 다낭</a></li>
                                                    </ul>
                            </dd>
                        </dl>
                    </div>
                </div>
                <!-- //권역별 -->
    
    
                <!-- 브랜드별 -->
                <div class="hCon" style="display:none;">
                    <div class="list1">
                        <dl>
                            <dt><a href="/index.do"><img src="/images/ko/mem/new_2019/main_tab1_tit1.gif" alt="THE SHILLA"></a></dt>
                            <dd>
                                <ul>
                                <li class="first"><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
                                                            <li class="last"><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
                                                            </ul>
                            </dd>
                        </dl>
                        <dl>
                            <dt><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko"><img src="/images/ko/mem/new_2019/main_tab1_tit2.gif" alt="SHILLA MONOGRAM"></a></dt>
                            <dd>
                                <ul>
                                    <li class="first last"><a href="https://www.shillamonogram.com/dnmg/index.do?lang=ko">신라모노그램 다낭</a></li>
                                                    </ul>
                            </dd>
                        </dl>
                        <dl>
                            <dt><a href="https://www.shillastay.com/"><img src="/images/ko/mem/new_2019/main_tab1_tit3.gif" alt="SHILLA STAY"></a></dt>
                            <dd>
                                <ul>
                                    <li class="first"><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
                                                        <li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
                                                        <li><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
                                                        <li><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
                                                        <li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
                                                        <li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
                                                        <li><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
                                                        <li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
                                                        <li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
                                                        <li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
                                                        <li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
                                                        <li><a href="https://www.shillastay.com/seobusan/index.do?lang=ko">신라스테이 서부산</a></li>
                                                        <li><a href="https://www.shillastay.com/yeosu/index.do?lang=ko">신라스테이 여수</a></li>
                                                        <li class="last"><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
                                                    </ul>
                            </dd>
                        </dl>
                    </div>
                </div>
                <!-- //브랜드별 -->
    
                <a href="#" class="btnClose">닫기</a>
            </div>
            <!-- //개선 : 호텔찾기 -->
    
            <div class="list" style="display:none"><!-- 20180307 호텔찾기 가로형 변경 -->
                <div class="hotel">
                    <h3><a href="/index.do" class="tit">The Shilla</a></h3>
                    <ul class="hotelListBox">
                        <li class="first"><a href="http://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
                        <li class="last"><a href="http://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
                    </ul>
                </div>
                <div class="stay">
                    <h3><a href="http://www.shillastay.com/stayhub/index.do" class="tit">Shilla Stay</a></h3>
                    <ul class="stayListBox">
                        <li class="first">
                            <span class="tit">서울 강북<!-- 서울 강북 --></span>
                            <ul>
                                <li class="first"><a href="http://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
                                <li><a href="http://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
                                <li class="last"><a href="http://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
                            </ul>
                            <span class="tit">서울 강남<!-- 서울 강남 --></span>
                            <ul>
                                <li class="first"><a href="http://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
                                <li><a href="http://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
                                <li class="last"><a href="http://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
                            </ul>
                        </li>
                        <li class="last">
                            <span class="tit">전국<!-- 전국 --></span>
                            <ul>
                                <li class="first"><a href="http://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
                                <li><a href="http://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
                                <li><a href="http://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
                                <li><a href="http://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
                                <li class="last"><a href="http://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div><!-- 20180307 호텔찾기 가로형 변경 -->
        </div>
    
        <!-- 예약 팝업 추가 -->
        <div class="rsvBox_wrap rsvBtn">
            <a class="btn" href="#none">예약<!-- 예약 --></a>
            <div class="newDim"></div>
            <div class="rsvBox_N">
                <div class="hHead">
                    <ul class="htTab">
                        <li class="tab1 first last"><a href="#"><span>예약<!-- 예약 --></span></a></li>
                    </ul>
                </div>
                <div class="hCon">
                    <div class="list1">
                        <ul>
                            <li class="rsvHotelGo first"><a href="/seoul/resv/rpm/memSetStep1.do">객실 예약<!-- 객실 예약 --></a></li>
                            <li class="rsvDiningGo last"><a href="/fbresv/web/memDiningStepWait.do">다이닝 예약<!-- 다이닝 예약 --></a></li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="btnClose">닫기</a>
            </div>
        </div>
        <!-- // 예약 팝업 추가 -->
      <div class="hubMenu">
        <ul>
            <li class="first"><span class="hMenu1"><a href="/membership/inquires/aboutShilla/memOverView.do">호텔신라 소개</a></span></li>
            <li><span class="hMenu2"><a href="/membership/inquires/contactus/memIndex.do">고객문의</a></span></li>
            <li class="last"><span class="hMenu3">
            <a href="/membership/offers/pack/memListRewardsPack.do">신라리워즈</a>
                </span>
            </li>
        </ul>
      </div>
    </div></div>
        
        <div class="contain">
        
            <div class="container">
            
                <div class="lnbArea lnbAreaInquires">
                <div class="lnbMenu">
                    <h2 class="tit">호텔신라 소개</h2>
                    <ul class="menu">
                        <li class="m1 first"><a href="/membership/inquires/aboutShilla/memOverView.do" class="on"><span>개요</span></a></li>
                        <li class="m2"><a href="/membership/inquires/aboutShilla/memSeoulHotel.do"><span>서울신라호텔</span></a></li>
                        <li class="m3"><a href="/membership/inquires/aboutShilla/memJejuHotel.do"><span>제주신라호텔</span></a></li>
                        <!-- 20191218 MG -->
                        <li class="m4"><a href="/membership/inquires/aboutShilla/memMghubHotel.do"><span>신라모노그램</span></a></li>
                        <li class="m5"><a href="/membership/inquires/aboutShilla/memStay.do"><span>신라스테이</span></a></li>
                        <li class="m6 last"><a href="/membership/inquires/aboutShilla/memAwards.do"><span>수상이력</span></a></li>
                    </ul>
                </div>
            </div>
        <div class="contents" id="contents">
                    <div class="ctnAcmd ctnDeluxe">
        <div class="location">
            <p class="list"><span class="crPosit">현재 페이지 위치 : </span> &gt; About The Shilla &gt; <strong> Overview </strong></p>
        </div>
        <div class="OverviewTit">
            <h3 class="tit">개요</h3>
        </div>
        <div class="account">
        <!-- content start -->
                <br>
                <div class="clearfix">
                <img src="/images/ko/hub/sub/brandMainImg.jpg" alt="신라 호텔의 사진">
            </div>
            <div class="clearfix">
                <img src="/images/ko/hub/sub/brandText.jpg" alt="브랜드 소개(하단참조)">
                <div class="hidden">
                    <h3>Samsung Group Affiliate </h3>
                    <p>호텔신라는 수많은 국빈의 방문과 국제행사를 치러내며‘삼성 그룹을 대표하는 얼굴’,<br>‘한국을 대표하는 호텔’로서 자부심과 책임감을 가지고 우리나라 서비스 산업의 견인차 역할을 해오고 있습니다.<br>호텔신라는 천년 역사와 함께 가장 찬란한 문화예술의 꽃을 피웠던 신라 왕조의 이름에서 유래하였으며, <br>삼성그룹 故 이병철 초대 회장의 뜻에 따라 1979년 3월 개관하였습니다.</p>
                    <h3>The Best Hospitality Company</h3>
                    <p>호텔신라는‘최고의 호스피탈리티 기업’을 목표로 오랜 세월동안 품위와 전통을 유지하며 고객들의 마음을 사로잡아 왔습니다. 
                    LHW 가입을 통해 세계 최고의 럭셔리 호텔들과 어깨를 나란히 하는가 하면 전통이라는 지붕 위에 모더니즘적 디자인 요소를 가미, 
                    삶에 여유와 품격을 한층 높여 주는 프리미엄 라이프 스타 일 공간으로 변화를 거듭해 왔습니다.
                    호텔신라는 앞으로도 끊임없는 창조적 혁신과 도전을 바탕으로 차별화된 최상의 가치를 선사하는 글로벌 호스피탈리티 
                    명문 기업으로 성장할 것을 약속드립니다.
                    </p>
                    <h3>Vision</h3>
                    <p>Premium Lifestyle Leading Company
                    최고의 품격과 신뢰를 바탕으로 고객이 꿈꾸는 라이프스타일을 제공하는 글로벌 선도기업</p>
                    <h3>Mission</h3>
                    <p>우리는 최고의 라이프스타일 전문가로서 더 많은 인류에게 품격과 자부심을 경험케 한다.</p>
                    <dl>
                        <dt>신라인으로서 미션</dt>
                        <dd>우리는 Premium Lifestyle을 선도하는 신라인으로서 각각의 분야에서 최고의 전문가로 성장한다.</dd>
                        <dt>고객에 대한 미션</dt>
                        <dd>우리는 더 많은 고객이 다양한 생활영역에서  신라만의 품격과 자부심을 경험케 한다.</dd>
                        <dt>사회에 대한 미션</dt>
                        <dd>우리는 지속적인 혁신과 성장을 통해 인류가 더 나은 삶을 누릴 수 있도록 기여한다.</dd>
                    </dl>
                    <h3>Core Value Pride Of The Shilla</h3>
                    <ul>
                        <li class="first">모든 사업에 최고를 지향합니다</li>
                        <li>모든 업무에서 혁신을 추구합니다</li>
                        <li>모든 고객에게 정성을 다합니다</li>
                        <li class="last">모든 신라인은 서로를 존중합니다</li>
                    </ul>
                </div>
            </div>					
        </div>
    </div></div>
    
            </div>
        
        </div>
        <div id="emailAdCollectPop" style="display:none"></div><div id="footerEmailLayer" style="display:none"></div><div class="foot footHub">
            <script type="text/javascript">
        function openIdInfo() {
            var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2038143363";
            window.open(url, "bizCommPop", "width=750, height=700, scrollbars=1");
        }
    </script>
    <div class="localBox">
        <div class="localBoxer">
            <div class="compInfo">
                <h2 class="logo">THE SHILLA SEOUL</h2>
            </div>
            <!-- 20191218 MG -->
            <div class="brandWrap">
                <div class="brand"><dl><dt><a href="/index.do">The Shilla</a></dt></dl></div>
                <div class="brandMono"><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko">신라모노그램</a></div>
                <div class="brandStay"><a href="https://www.shillastay.com/stayhub/index.do">신라스테이</a></div>
            </div>
            <div class="linkInfo">
                <dl class="introduction">
                    <dd class="d1"><a href="/membership/inquires/aboutShilla/memOverView.do"><span>호텔신라 소개</span></a></dd> 
                    <dd class="d2"><a href="/membership/inquires/hotelDevelopment.do"><span>호텔 개발</span></a></dd>
                        <dd class="d3"><a href="/membership/inquires/contactus/memIndex.do"><span>고객문의</span></a></dd>
                        <dd class="d8"><a href="/membership/inquires/aboutShilla/memSiteMap.do"><span>사이트맵</span></a></dd>
                    <dd class="d4"><a href="/membership/inquires/memChangeRewards.do"><span>신라리워즈 전환 안내</span></a></dd>
                    <dd class="d5"><a href="https://www.theshilla.shop/" target="_blank"><span>The Shilla shop</span></a></dd>
                        <dd class="d6"><a href="https://www.samsunggiftcard.net/common/sgc/index.html" target="_blank"><span>삼성상품권</span></a></dd>
                        <dd class="d7"><a href="#" onclick="oldHopenO('oldHpopup'); return false;"><span>신라리워즈 전환 안내</span></a></dd>
                    </dl>
                <dl class="inquiries">
                    <dt class="dt">SNS</dt>
                        <dd class="insta"><a title="Instagram - popup" target="_blank" href="https://www.instagram.com/shillahotels/"><span>Instagram</span></a></dd>
                        <dd class="facebook"><a title="Facebook - popup" target="_blank" href="http://www.facebook.com/theshillahotels"><span>Facebook</span></a></dd>
                        <dd class="weibo"><a title="Weibo - popup" target="_blank" href="http://weibo.com/shillahotel"><span>Weibo</span></a></dd>
                        <dd class="youtube"><a title="Youtube - popup" target="_blank" href="https://www.youtube.com/@theshillahotelsresorts9834"><span>Youtube</span></a></dd>
                </dl>
                
                <dl class="ContactInfo">
                    <dd class="d1"><span>서울신라호텔 02-2233-3131</span></dd> 
                    <dd class="d2"><span>제주신라호텔 064-735-5114</span></dd>
                    <dd class="d3"><span>신라스테이 02-2230-0700</span></dd>
                    <dd class="d4"><span>신라리워즈 02-2230-5528</span></dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="linkBox">
            <ul>
                <li class="link1 first"><a href="/membership/memFooter/memAgreement.do">신라리워즈 약관</a></li>
                <li class="link2"><a href="/membership/memFooter/memIndividualPolicy.do">개인정보처리방침</a></li>
                <li class="link3"><a href="/membership/memFooter/pop/memEmailAdCollectPop.do" onclick="openCtrlPopup('/membership/memFooter/pop/memEmailAdCollectPop.do','emailAdCollectPop');  return false;">이메일무단수집금지</a></li>
                <li class="link4"><a href="https://www.shillaaudit.com/audit/inf_information.do" target="_blank">윤리경영</a></li>
                <li class="link5 last"><a href="/membership/memFooter/pop/memSafeMngPop.do" onclick="openCtrlPopup('/membership/memFooter/pop/memSafeMngPop.do','emailAdCollectPop');  return false;">건축/시설물 안전관리</a></li>  </ul>
        </div>
        <div class="selectLang">
            <ul>
                <li class="en first"><a href="/hub/cmm/setLang.do?lang=en">English</a></li>
                        <li class="ja"><a href="/hub/cmm/setLang.do?lang=ja">日本語</a></li>
                        <li class="zh last"><a href="/hub/cmm/setLang.do?lang=zh">简体中文</a></li>
                        </ul>
        </div> 
        <div class="adressBox">
            <p>㈜호텔신라 서울특별시 중구 동호로 249 (우: 04605)  Tel: 02-2233-3131 Fax: 02-2230-3769 사업자등록번호: 203-81-43363 통신판매신고번호: 중구00272호 대표이사 이부진    호스팅서비스제공자 삼성SDS㈜    서울객실예약 shilla.reserve@samsung.com  제주객실예약 jejushilla@samsung.com</p>
            <a class="footLinkbtn" href="#" onclick="openIdInfo(); return false;">사업자 정보 확인</a>
            </div>
        <div class="copyright"><p>COPYRIGHT © HOTEL SHILLA CO., LTD. ALL RIGHTS RESERVED.</p></div>
    </div>
                    <!-- 17.03.28 popup 추가 -->
                        <div id="oldHpopup">
                            <div class="oldHback" style="z-index:999;"></div>
                            <div class="oldHwrap" style="z-index:999;">
                            <div class="ctnTitle">
                                <img alt="명품고택 소개" src="/images/ko/hub/main/oldHpoptit.gif">
                            <div class="close"><a href="#" onclick="oldHopenC('oldHpopup'); return false;">
                                <img src="/images/ko/mem/reservation/step1Infoclose.gif" alt="닫기"></a>
                            </div>
                            </div>
                            <div class="ctnWrap">
                                <img src="/images/ko/hub/main/oldHctn.jpg">
                                    <p>경북 명품고택</p>
                                    <p>호텔신라가 문화체육관광부에서 선정한 경상북도 명품 고택을 소개하여 드립니다.</p>
                                    <p>여행 테마에 따라 우리나라 전통문화와 선조들의 멋과 정신을 오롯이 체험하실 수 있습니다.</p>
                                    <p>* 호텔신라는 고택 예약 서비스를 직접 운영하지 않으며, 본 사이트는 고택 소개 정보만을 제공하고 있음을 알려드립니다.</p>
                                    <p>신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</p>
                            <div class="btnCtn">
                                <a class="oldHbtn" href="http://gyeongbukgotaek.modoo.at" target="_blank">자세히 보기</a></div>
                            </div>
                            </div>
                            </div>
                            <script>
                            function oldHopenO(IdName) {
                                var pop = document.getElementById(IdName);
                                pop.style.display = "block";
                                $('html, body').animate({scrollTop: 0 }, 'fast');
                                return false;
                            }
    
                            function oldHopenC(IdName) {
                                var pop = document.getElementById(IdName);
                                pop.style.display = "none";
                                return false;
                            }
                            </script>
                    <iframe id="hidden_frame" name="hidden_frame" style="display:none" title="빈 프레임"> </iframe></div>
    
    </div>
    
    
    
    <script type="text/javascript" id="">document.all&&!document.addEventListener||window.proxied_alert||(window.proxied_alert=window.alert,window.alert=function(){var a=arguments[0]?arguments[0]:"null";dataLayer.push({event:"alert_showed",alert_message:a});return proxied_alert.apply(this,arguments)});</script><script type="text/javascript" id="">(function(){if(null==sessionStorage.getItem("_PageViewCounter")||void 0==sessionStorage.getItem("_PageViewCounter"))sessionStorage.setItem("_PageViewCounter",1);else{var f=0;f=parseInt(sessionStorage.getItem("_PageViewCounter"));f+=1;sessionStorage.setItem("_PageViewCounter",f)}var v=!0,l=2592E5;if(window.Storage){var c=JSON.parse(localStorage.getItem("_tab_ids"))||[],d=sessionStorage.getItem("_tab_id"),a=JSON.parse(sessionStorage.getItem("_nav_path")),e=document.location.href;f=!1;var w=document.location.origin,
    t,p,m,g,u=function(b){return 0===l?b:b.filter(function(h){try{return m=parseInt(h.split("_")[1],10),m>(new Date).getTime()}catch(q){return!1}})};var r=function(b){if(0===l)return b;try{g=b.split("_");m=parseInt(g[1],10);if(m>(new Date).getTime())return b;g=g[0]+"_"+((new Date).getTime()+l);sessionStorage.setItem("_tab_id",g);return g}catch(h){return b}};var x=function(){if(!1===v)return"BACK/FORWARD";if(2>a.length)return"FORWARD";t=a[a.length-2];p=a[a.length-1];return t===e||p===e?"BACK":"FORWARD"},
    y=function(){c=JSON.parse(localStorage.getItem("_tab_ids"))||[];d=sessionStorage.getItem("_tab_id");c=u(c);if(c.length&&null!==d){var b=c.indexOf(d);-1<b&&c.splice(b,1);localStorage.setItem("_tab_ids",JSON.stringify(c))}},z=function(){var b=(new Date).getTime();"undefined"!==typeof performance&&"function"===typeof performance.now&&(b+=performance.now());return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(h){var q=(b+16*Math.random())%16|0;b=Math.floor(b/16);return("x"===h?q:q&3|
    8).toString(16)})+(0<l?"_"+((new Date).getTime()+l):"")},A=function(b,h){return!(!0===h&&0!==b&&255!==b)};null===d?(d=z(),f=!0,sessionStorage.setItem("_tab_id",d)):d=r(d);c=u(c);-1===c.indexOf(d)&&(c.push(d),localStorage.setItem("_tab_ids",JSON.stringify(c)));r=c.length;if(window.PerformanceNavigation){a=a||[];var n=window.performance.navigation.redirectCount;if(A(window.performance.navigation.type,f))switch(window.performance.navigation.type){case 0:var k="NAVIGATE";a.push(e);break;case 1:k="RELOAD";
    0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["rm"]["_GTM-T3LBJ26"](78)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
    browsingBehavior:n})}})();</script>
    </body>