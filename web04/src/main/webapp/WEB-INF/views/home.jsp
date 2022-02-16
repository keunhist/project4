<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" /> 
<html>
<head>
	<title>문화체육관광부 누리집에 오신 것을 환영합니다. | 문화체육관광부</title>
<%@ include file="include/head.jsp" %>
 <script src="https://code.jquery.com/jquery-latest.js"></script>
 <style>
        .vs { clear:both; width: 100%; position:relative; max-height:540px; overflow:hidden; }
           .vs_pic_box { width:400%; overflow-x:hidden; }
           .vs_pic_box:after { content:""; display:block; cleaR:both; }
           .vs_pic_box li { float:left; width: 25%; }
           .vs_pic_box li img { display:block; width: 100%; }
           .btn_box1 li button.vs_btn { display:block; outline: 0; border:0; background-color: transparent; 
           width: 50px; height: 75px; background-repeat: no-repeat; background-image: url("include/image/visualArr.png"); 
           position:absolute; top:42%; margin-top:-37px; z-index:20; cursor:pointer; }
           .btn_box1 li button.vs_btn.prev { left:30px; background-position: left center;}
           .btn_box1 li button.vs_btn.next { right:30px; background-position: right center;}
           .slider_main_top {width:100%;height:480px;overflow:hidden;}

.ico_box { clear:both; width: 100%; height: 80px; padding-bottom: 15px; background-color: rgb(236, 254, 255); padding-top: 15px; overflow:hidden; }
    .ico_box:after { content:""; clear:both; display:block; }
    .ico_wrap { width: 1200px; margin:10px auto; }
    .ico_wrap li { width: 200px; float:left; height: 80px; }
    .ico_wrap li a { display:block; padding:10px 10px 10px 72px; background-repeat: no-repeat; background-position:10px center; line-height:20px; font-weight: bold; color:#666; }
    .ico_wrap li.ico1 a { background-image: url("include/image/sprite_img02.png"); background-position:0 0;}
    .ico_wrap li.ico2 a { background-image: url("include/image/main_icon02.png"); }
    .ico_wrap li.ico3 a { background-image: url("include/image/main_icon03.png"); }
    .ico_wrap li.ico4 a { background-image: url("include/image/main_icon04.png"); }
    .ico_wrap li.ico5 a { background-image: url("include/image/main_icon05.png"); }
    .ico_wrap li.ico6 a { background-image: url("include/image/main_icon06.png"); }

    .over_sl_box { clear:both; width: 113%; max-height:420px; overflow:hidden; margin-bottom: 20px; 
    margin-top: 20px; position:relative; overflow:hidden;  margin-left: -13%; }
    .over_sl_box:after { content:""; display:block; clear:both; }
    .over_sl_box ul { clear:both; width:200%; height: 340px; overflow:hidden; }
    .over_sl_box ul li { float:left; width:10%; margin-left:1.5%; margin-right:1.5%; }
    .over_sl_box ul li a { display:block; }
    .over_sl_box ul li a img { display:block; width: 100%; }
    .over_btn_box { width:220px; height: 30px; position:relative; margin:20px auto;  }
    .over_btn_box button { display:block; border:0; outline:0; width:14px; height:14px;  
    border-radius:8px; background-color: #666; float:left; cursor:pointer; bottom:20px; z-index:20;
    position:absolute; }
    .over_btn_box button.item1 { left:0px; }
    .over_btn_box button.item2 { left:20px; }
    .over_btn_box button.item3 { left:40px; }
    .over_btn_box button.item4 { left:60px; }
    .over_btn_box button.item5 { left:80px; }
    .over_btn_box button.item6 { left:100px; }
    .over_btn_box button.item7 { left:120px; }
    .over_btn_box button.item8 { left:140px; }
    .over_btn_box button.item9 { left:160px; }
    .over_btn_box button.item10 { left:180px; }
    .over_btn_box button.act { background-color: deeppink; }

    .contact_box { clear:both; width: 100%; height: 240px; overflow:hidden;  }
    .contact_box:after { content:""; display:block; clear:both; }
    .contact_wrap { width:1200px; margin:30px auto; height:200px; }
    .noti_box { width: 400px; float:left; margin-right: 50px; }
    .ra_item { display:none; }
    .noti_wrap { clear:both; }
    .noti_wrap .noti { display:none; width: 400px; height: 200px; }
    #ra1:checked ~ .noti_wrap .noti.item1 { display:block; }
    #ra2:checked ~ .noti_wrap .noti.item2 { display:block; }

    .noti_lb_box { clear:both; height: 48px; }
    .noti_lb_box li { float:left; width: 100px; text-align: center; height: 48px; line-height: 48px;
     cursor: pointer; }
    .noti_lb_box li.more_item { float:right;  font-size:14px; font-weight: bold;  }
    .noti_lb_box li label { color:#000; font-weight: normal; cursor: pointer; }
    #ra1:checked ~ .noti_lb_box li.item1 label { color:red; font-weight:bold; }
    #ra2:checked ~ .noti_lb_box li.item2 label { color:red; font-weight:bold; }

    .news_box { width: 400px; float:left; margin-right: 50px; }
    .news_wrap { clear:both; }
    .news_wrap .news { display:none; width: 400px; height:200px; }
    #ra3:checked ~ .news_wrap .news.item1 { display:block; }
    #ra4:checked ~ .news_wrap .news.item2 { display:block; }

    .news_lb_box { clear:both; height: 48px; }
    .news_lb_box li { float:left; width: 100px; text-align: center; height: 48px; line-height: 48px;
     cursor: pointer; }
    .news_lb_box li.more_item { float:right; font-size:14px; font-weight: bold; }
    .news_lb_box li label { color:#000; font-weight: normal;  cursor: pointer; }
    #ra3:checked ~ .news_lb_box li.item1 label { color:red; font-weight:bold; }
    #ra4:checked ~ .news_lb_box li.item2 label { color:red; font-weight:bold; }
    .noti_wrap, .news_wrap { border-top:2px solid #333; }

    .tel_box { width: 300px; height: 200px; float:right; background-color:#1d4bb0; 
    background-image: url("./data/info-mo.png"); background-repeat: no-repeat; background-position:220px bottom; }
    .tel_wrap { width: 186px; padding: 20px 20px; }
    .tel_wrap li { line-height:36px; background-repeat: no-repeat; background-position:0px center; }
    .tel_wrap li a { display:block; color:#fff; font-weight: bold; font-size:14px; padding-left: 32px; }
    .tel_wrap li.map1 { background-image: url("include/image/info-loca.png"); }
    .tel_wrap li.map2 { background-image: url("include/image/info-tel.png"); }
    .tel_wrap li.map3 { background-image: url("include/image/info-com.png"); }
    .board_tb { display:table; border-collapse: collapse; width:98%; margin: 10px auto; }
    .board_tb tr { display:table-row; }
    .board_tb td { display:table-cell; font-size:14px; line-height: 24px; }
    .board_tb .board_tit { width: 260px; }
    .board_tb .board_tit a { display:block; width: 250px; color:#666; font-weight:bold; 
    padding-right: 10px; overflow:hidden; text-overflow: ellipsis; white-space: nowrap; }
    .board_tb .board_date { text-align:center; }
    .board_tb td .ico_img { display:none; }
    .ft { clear:both; width: 100%; }
    .ft:after { content:""; display:block; clear:both; }
    .ft_wrap { clear:both; width: 100%; border-bottom:1px solid #999; min-height:100px; }
    .ft_box { clear:both; width: 1200px; margin: 0 auto; }
    .sns_link { float:left; padding:10px 10px 10px 0px; }
    .sns_link li { float:left; margin-right:40px; }
    .sns_link li a { display:block; width: 55px; height: 55px; background-repeat: no-repeat; 
    background-position:center center; }
    .sns_link li.item1 a { background-image: url("include/image/facebook.png");}
    .sns_link li.item2 a { background-image: url("include/image/utube.png");}
    .sns_link li.item3 a { background-image: url("include/image/blog.png");}
    .sns_link li.item4 a { background-image: url("include/image/instar.png");}
    .sns_link li.item5 a { background-image: url("include/image/naverTv.png"); }
    .relation_link { float:right; margin-top: 20px; }
    .relation_link .hot_link { display:block; float:left; width:150px; height: 40px; background-color:#ef4c84; 
    color:#fff; font-weight: bold; line-height: 40px; padding-left: 40px; background-repeat: no-repeat; 
    background-position:14px center; background-image: url("include/image/link-loca.png"); }
    .relation_link .rel_sel_box { width: 150px; float:left; line-height:38px; padding-left: 10px; border:1px solid #333; margin-left: 30px; position:relative; height: 38px; overflow:hidden; }
    .relation_link .rel_sel_box #rel_sel { border:0; outline:0; display:block; width: 150px; height: 38px; 
    line-height: 38px; position:absolute; bottom:0px; left: 0; }
       </style>    

</head>
<body>
<%@ include file="include/header.jsp" %>
<section class="content">
    <div class="vs">
        <ul class="vs_pic_box">
            <li><img src="include/image/slide.png" alt="배너슬라이더1"></li>
            <li><img src="include/image/slide2.png" alt="배너슬라이더2"></li>
            <li><img src="include/image/slide3.png" alt="배너슬라이더3"></li>
        </ul>
        <ul class="btn_box1">
            <li><button class="vs_btn prev"></button></li>
            <li><button class="vs_btn next"></button></li>
        </ul>
        <ul class="btn_box2">
            <li><button class="btn1"></button></li>
            <li><button class="btn2"></button></li>
            <li><button class="btn3"></button></li>
            <li><button class="btn4"></button></li>
            <li><button class="play_btn"></button></li>
        </ul>
    </div>
    <script>
    $(function(){
        var vstar = $(".vs_pic_box"); 
        var vswd = parseInt(vstar.width() * 0.25 * -1);
        var vs_ani1 = function(){
            vstar.not(":animated").animate({"margin-left":vswd+"px"}, 600, function(){
                vstar.find("li").eq(0).appendTo($(vstar));
                vstar.css("margin-left", "0px");
            });
        }
        var vs_ani2 = function(){
            vstar.find("li").eq(3).prependTo($(vstar));
            vstar.css("margin-left", "-100%");
            vstar.not(":animated").animate({"margin-left":"0px"}, 600);
        }
        var intvs = setInterval(function() { vs_ani1(); }, 4000);
        $(".vs .btn_box1 li .prev").click(function(){
            clearInterval(intvs);
            vs_ani2();
            intvs = setInterval(function() { vs_ani1(); }, 4000);
        });
        $(".vs .btn_box1 li .next").click(function(){
            clearInterval(intvs);
            vs_ani1();
            intvs = setInterval(function() { vs_ani1(); }, 4000);
        });
    });    
    </script>
    
    <div class="ico_box">
        <ul class="ico_wrap">
            <li class="ico1">
                <a href="">
                    <h3 class="ico_tit">업무계획</h3>
                    <p class="more_txt">MORE &gt;</p>
                </a>
            </li>
            <li class="ico2">
                <a href="">
                    <h3 class="ico_tit">분야별정책</h3>
                    <p class="more_txt">MORE &gt;</p>
                </a>
            </li>
            <li class="ico3">
                <a href="">
                    <h3 class="ico_tit">전자민원</h3>
                    <p class="more_txt">MORE &gt;</p>
                </a>
            </li>
            <li class="ico4">
                <a href="">
                    <h3 class="ico_tit">열린장관실</h3>
                    <p class="more_txt">MORE &gt;</p>
                </a>
            </li>
            <li class="ico5">
                <a href="">
                    <h3 class="ico_tit">적극행정</h3>
                    <p class="more_txt">MORE &gt;</p>
                </a>
            </li>
            <li class="ico6">
                <a href="">
                    <h3 class="ico_tit">직원검색</h3>
                    <p class="more_txt">MORE &gt;</p>
                </a>
            </li>
        </ul>
    </div>
    <div class="over_sl_box">
        <ul>
            <li><a href=""><img src="include/image/ban1.gif" alt="배너이미지1"></a></li>
            <li><a href=""><img src="include/image/ban2.png" alt="배너이미지2"></a></li>
            <li><a href=""><img src="include/image/ban3.gif" alt="배너이미지3"></a></li>
            <li><a href=""><img src="include/image/ban4.jpg" alt="배너이미지4"></a></li>
            <li><a href=""><img src="include/image/ban5.jpg" alt="배너이미지5"></a></li>
            <li><a href=""><img src="include/image/ban6.png" alt="배너이미지6"></a></li>
            <li><a href=""><img src="include/image/ban7.jpg" alt="배너이미지7"></a></li>
            <li><a href=""><img src="include/image/ban8.jpg" alt="배너이미지8"></a></li>
            <li><a href=""><img src="include/image/ban9.jpg" alt="배너이미지9"></a></li>
            <li><a href=""><img src="include/image/ban10.jpg" alt="배너이미지10"></a></li>
        </ul>
        <div class="over_btn_box"><button class="item1 act"></button><button class="item2"></button><button class="item3"></button><button class="item4"></button><button class="item5"></button><button class="item6"></button><button class="item7"></button><button class="item8"></button><button class="item9"></button><button class="item10"></button></div>
    </div>
    <script>
    $(function(){
        var tar = $(".over_sl_box ul"); 
        var wd = parseInt(tar.width() * 0.13 * -1);
        var ani1 = function(){
            tar.not(":animated").animate({"margin-left":wd+"px"}, 400, function(){
                $(".over_btn_box button").removeClass("act");
                $(".over_btn_box button").eq(0).appendTo($(".over_btn_box"));
                $(".over_btn_box button").eq(0).addClass("act");
                tar.find("li").eq(0).appendTo($(tar));
                tar.css("margin-left", "0px");
            });
        }
        var intv = setInterval(function() { ani1(); }, 3000);
        $(".over_btn_box button").click(function(){
            var btn = $(this).index();
            clearInterval(intv);
            $(".over_btn_box button").removeClass("act");
            $(".over_btn_box button").eq(btn).addClass("act");
            for(var i=0;i<btn-1;i++){
                tar.find("li").eq(0).appendTo($(tar));
                $(".over_btn_box button").eq(0).appendTo($(".over_btn_box"));
            }
            ani1();
            intv = setInterval(function() { ani1(); }, 3000);
        });
    });    
    </script>
    <div class="contact_box">
        <div class="contact_wrap" style="">
            <div class="noti_box">
                <input type="radio" name="ra1" class="ra_item" id="ra1" checked>
                <input type="radio" name="ra1" class="ra_item" id="ra2">
                <ul class="noti_lb_box">
                    <li class="item1"><label for="ra1">공지사항</label></li>
                    <li class="item2"><label for="ra2">채용정보</label></li>
                    <li class="more_item"><a href="">더보기</a></li>
                </ul>
                <ul class="noti_wrap">
                    <li class="item1 noti">
                        <div class="noti_con">
                            <table class="board_tb">
                                <tbody>
                                    <tr>
                                        <td class="board_tit"><a href="">2021년 3분기 보상금 분배공고</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">2022년 작은도서관 문화가 있는 날 보조사업자 선정 결과 공고</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">2022년 공공도서관 문화가 있는 날 보조사업자 선정 결과 공고</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">한국문학번역원 번역아카데미 야간과정 및 번역아틀리에 모집공고</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                    <li class="item2 noti">
                        <div class="noti_con">
                            <table class="board_tb">
                                <tbody>
                                    <tr>
                                        <td class="board_tit"><a href="">채용정보 제목1</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">채용정보 제목2</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">채용정보 제목3</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">채용정보 제목4</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                </ul>   
            </div>
            <div class="news_box">
                <input type="radio" name="ra2" class="ra_item" id="ra3" checked>
                <input type="radio" name="ra2" class="ra_item" id="ra4">
                <ul class="news_lb_box">
                    <li class="item1"><label for="ra3">보도자료</label></li>
                    <li class="item2"><label for="ra4">입찰구매</label></li>
                    <li class="more_item"><a href="">더보기</a></li>
                </ul>
                <ul class="news_wrap">
                    <li class="item1 news">
                        <div class="news_con">
                            <table class="board_tb">
                                <tbody>
                                    <tr>
                                        <td class="board_tit"><a href="" class="db_com">2022년 장애인 국가대표 선수단 훈련 개시 격려</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="" class="db_com">민간 실내체육시설 소비할인권, 56만명 지원</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="" class="db_com">대한민국 국가이미지, 문화콘텐츠 강국으로 도약</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="" class="db_com">전 세계적인 한류로 콘텐츠 수출액 14조원 돌파</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                    <li class="item2 news">
                        <div class="news_con">
                            <table class="board_tb">
                                <tbody>
                                    <tr>
                                        <td class="board_tit"><a href="">입찰구매 제목1</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">입찰구매 제목2</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">입찰구매 제목3</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                    <tr>
                                        <td class="board_tit"><a href="">입찰구매 제목4</a></td>
                                        <td class="board_date"><span>2022-01-17</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </li>
                </ul>   
            </div>
            <div class="tel_box">
                <ul class="tel_wrap">
                    <li class="map1"><a href="">찾아오시는 길</a></li>
                    <li class="map2"><a href="">담당자 연락처</a></li>
                    <li class="map3"><a href="">사업자등록증, 계좌안내</a></li>
                </ul>
            </div>
        </div>
    </div>
    <footer class="ft">
        <div class="ft_wrap">
            <div class="ft_box">
                <nav class="sns_link">
                    <ul>
                        <li class="item1"><a href=""></a></li>
                        <li class="item2"><a href=""></a></li>
                        <li class="item3"><a href=""></a></li>
                        <li class="item4"><a href=""></a></li>
                        <li class="item5"><a href=""></a></li>
                    </ul>
                </nav>
                <nav class="relation_link" >
                    <a href="" class="hot_link">지역 본부 홈페이지</a>
                    <div class="rel_sel_box">
                        <select name="rel_sel" id="rel_sel">
                            <option value="site1">링크1</option>
                            <option value="site2">링크2</option>
                            <option value="site3">링크3</option>
                            <option value="site4">링크4</option>
                            <option value="site5">링크5</option>
                        </select>
                    </div>
                </nav>
            </div>
        </div>
    </footer>
    </section>
<%@ include file="include/footer.jsp" %>
</body>
</html>