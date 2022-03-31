<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
   <title> PAI:DE | 회원정보수정.updateMember</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
   <!-- VENDOR CSS -->
   <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
   <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
   <link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
   <!-- MAIN CSS -->
   <link rel="stylesheet" href="assets/css/main.css">
   <link rel="stylesheet" href="assets/css/style.css">
   <script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
   <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
   <link rel="stylesheet" href="assets/css/demo.css">
   <!-- GOOGLE FONTS -->
   <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
   <!-- ICONS -->
   <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
   <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
</head>

<body>
   <!-- WRAPPER -->
   <div id="wrapper">
    <!-- NAVBAR -->
      <nav class="navbar navbar-default navbar-fixed-top">
         <div class="brand">
            <a href="index.jsp"><img src="assets/img/pidelogoSmall.png" alt="piede Logo"
                  class="img-responsive logo"></a>
         </div>
         <div class="container-fluid">
            <div class="navbar-btn">
               <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
            </div>
            <form class="navbar-form navbar-left" method="post" name="search" action="SearchArticleService.do">
               <div class="input-group">
                  <table>
                     <tr>
                        <td>
                           <select class="form-control" name="searchField">
                              <option value="0">선택</option>
                              <option value="article_title">제목</option>
                              <option value="writer">작성자</option>
                           </select>
                        </td>
                        <td>
                           <input type="text" class="form-control" placeholder="Search dashboard..." name="searchText"
                              maxlength="100">
                        </td>
                        <td>
                           <button type="submit" class="btn btn-primary">Go</button>
                        </td>
                     </tr>
                  </table>
               </div>
            </form>
            <div id="navbar-menu">
               <ul class="nav navbar-nav navbar-right">

                  <!-- 로그아웃시 삭제1 start-->
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png"
                           class="img-circle" alt="Avatar"> <span> 송다민 </span> <i
                           class="icon-submenu lnr lnr-chevron-down"></i></a>
                     <ul class="dropdown-menu">
                        <li><a href="myFarm.jsp"><i class="lnr lnr-leaf"></i> <span>내 농장</span></a></li>
                        <li><a href="updateMember.jsp"><i class="lnr lnr-cog"></i> <span>회원정보수정</span></a></li>
                        <li><a href="index.jsp"><i class="lnr lnr-exit"></i> <span>로그아웃</span></a></li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                        <i class="lnr lnr-bubble"></i>
                        <span class="badge bg-danger">5</span>
                     </a>
                     <ul class="dropdown-menu notifications">
                        <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System
                              space is
                              almost full</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9
                              unfinished tasks</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly
                              report is
                              available</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly
                              meeting in
                              1 hour</a></li>
                        <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your
                              request has
                              been approved</a></li>
                        <li><a href="#" class="more">See all notifications</a></li>
                     </ul>
                  </li>
                  <!-- 이웃목록
                           추가할 기능
                              1. 구독(이웃추가)을 눌렀을 때, 자동으로 class="dropdown-menu notifications으로 들어가고,
                              2.  class="dropdown-menu notifications에 있는 다른 농장의 수 만큼 자동으로 class="badge rounded-pill bg-success"에서 count가 들어가야 함.
                              3. 구독을 다시 한 번 눌렀을 때, 구독이 취소되고, 자동으로 class="badge rounded-pill bg-success"에서 카운트가 내려가고, class="dropdown-menu notifications"에서 목록이 빠져야 함. -->
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                        <i class="lnr lnr-users"></i>
                        <!-- 변경 5 =  이웃의 수 만큼 count가 되어야 함. -->
                        <span class="badge rounded-pill bg-success">5</span>
                     </a>
                     <!-- ? 대매니 : m_id가 아니라 subscriptioned_id (이웃의 아이디)가  들어가야하는 거 아닌가요? 
                                사용자의 이웃의 수 만큼 li 반복 되어야합니다  -->
                     <!-- "m_id"의 코드가 들어가고, 클릭 시, 해당 회원의 농장화면으로 넘어감. -->

                     <ul id='neighbor' class="dropdown-menu notifications">
                        <li><a href="OtherFarm.jsp" class="notification-item"><span
                                 class="lnr lnr-user"></span>&nbsp;damin0722</a></li>
                        <li><a href="OtherFarm.jsp" class="notification-item"><span
                                 class="lnr lnr-user"></span>&nbsp;chanyoung0831</a></li>
                        <li><a href="OtherFarm.jsp" class="notification-item"><span
                                 class="lnr lnr-user"></span>&nbsp;seolmi0303</a></li>
                        <li><a href="OtherFarm.jsp" class="notification-item"><span
                                 class="lnr lnr-user"></span>&nbsp;hyeonji2231</a></li>
                        <li><a href="OtherFarm.jsp" class="notification-item"><span
                                 class="lnr lnr-user"></span>&nbsp;jingwan1996</a></li>
                     </ul>
                  </li>
                  <!-- 로그아웃시 삭제1 end-->

                  <!-- 로그아웃시 추가 start : 로그인버튼 -->
                  <!-- <div class="navbar-btn navbar-btn-right"> 
                     <a class="btn btn-primary" href="page-login.html"  ><i class="lnr lnr-leaf"></i> <span> 로그인</span></a>
                     </div>  -->
                  <!--로그아웃시 추가 end-->

               </ul>
            </div>
         </div>
      </nav>
      <!-- END NAVBAR -->

      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class="sidebar">
         <div class="sidebar-scroll">
            <nav>
               <ul class="nav">
                  <li><a href="index.jsp" class=""><i class="lnr lnr-home"></i> <span>Home</span></a></li>
                  <li><a href="commu_D.jsp" class=""><i class="lnr lnr-list"></i> <span>농산물 직거래</span></a></li>
                  <li><a href="commu_E.jsp" class=""><i class="lnr lnr-list"></i> <span>체험농장</span></a></li>
                  <li><a href="commu_W.jsp" class=""><i class="lnr lnr-list"></i> <span>농촌일자리</span></a></li>
                  <li><a href="commu_F.jsp" class=""><i class="lnr lnr-list"></i> <span>자유게시판</span></a></li>

                  <!-- 로그아웃시 삭제2 start -->
                  <li>
                     <a href="#subPages" data-toggle="collapse" class="active"><i class="lnr lnr-user"></i>
                        <span>송다민</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                     <div id="subPages" class="collapse in">
                        <ul class="nav">
                           <li><a href="myFarm.jsp" class="active"><i class="lnr lnr-leaf"></i>내 농장</a></li>
                           <li><a href="farmSelect.jsp" class=""><i class="lnr lnr-magnifier"></i>농장검색</a></li>
                           <li><a href="commuWrite.jsp" class=""><i class="lnr lnr-pencil"></i>글쓰기</a></li>
                        </ul>
                     </div>
                  </li>
                  <!-- 로그아웃시 삭제2 end -->
               </ul>
            </nav>
         </div>
      </div>
      <!-- END LEFT SIDEBAR -->
      <!-- MAIN -->
      <div class="main">
         <!-- MAIN CONTENT -->
         <div class="main-content">
            <div class="container-fluid">
               <div class="panel panel-profile">
                  <div class="clearfix">
                     <!-- LEFT COLUMN -->
                     <div class="profile-left">
                        <div class="profile-header">
                           <div class="profile-main">
                              <!-- 기본이미지 -->
                              <div id="preview"><img id="profileimg" name="profile_A" src="assets/img/farmer.png"> </div>
                              <!--변경 action 프로필이미지 넣는 메소드로 -->
                              <form action="UpdateMemberService.do" id="form" name="form" method="post" enctype="multipart/form-data"
                                 autocomplete="off">
                                 <input type="file" name="profile_B" accept="image/*" onchange="previewImage(this)" />
                                 <button type="submit" class="btn btn-primary">업로드</button>
                              </form>
                           </div>

                        </div>
                        <!-- PROFILE DETAIL -->
                        <div class="profile-detail">
                           <div class="profile-info">
                              <!-- INPUTS -->
                              <div class="panel">
                                 <div class="panel-heading">
                                    <h3 class="panel-title">개인정보수정</h3>
                                 </div>
                                 <!-- 변경  -->
                                 <!-- action 회원정보수정서비스콘으로-->
                                 <form action="UpdateMemberService.do" method="post">
                                    <div class="panel-body">
                                       <!--아이디 hidden값으로 넘겨달라함.-->
                                       <input type="hidden" name="id" class="form-control">
                                       이름<input type="text" name="name" class="form-control" placeholder="이름 입력">
                                       <br>
                                       휴대전화<input type="text" name="phone" class="form-control" placeholder="전화번호 입력">
                                       <br>
                                       비밀번호<input id="updatePW" type="password" name="pw" class="form-control" placeholder="비밀번호 입력">
                                       <br>
                                       새 비밀번호 확인 <font id="chkNotice" size="2"></font><input id="updatePwChk"
                                          type="password" name="m_pw" class="form-control" placeholder="비밀번호 확인">
                                       <br>
                                       이메일<input type="email" name="email" class="form-control" placeholder="이메일 입력">
                                       <br>
                                       <center>
                                         <input type="submit" value="완료" id="Update" class="btn btn-primary">
                                       </center>
                                       <br><br>
                                    </div>
                                 </form>
                              </div>
                           </div>
                           <!-- END INPUTS -->
                        </div>
                        <!-- END PROFILE DETAIL -->
                     </div>
                     <!-- END LEFT COLUMN -->
                     <!-- RIGHT COLUMN -->
                     <div class="profile-right">
                        <h4 class="heading">농장정보수정</h4>
                        <div class="panel">
                           <div class="panel-body">
                              <!-- 변경 
                                 선택한 농장의 이름값을보내주기 농장서비스로가고 농장서비스에서 값을가지고 다시 돌아와야함  -->
                              <form action="" method="">
                                 <div class="input-group">
                                    <select class="form-control">
                                       <!-- 변경 사용자의 등록된 농장 이름 가져오기  -->
                                       <option value="">농장을선택해주세요.</option>
                                       <!-- 등록된 회원의 농장이 나와야함  -->
                                       <option name="f_name" value="대매니의 딸기농장">대매니의 딸기농장</option>
                                       <option name="f_name" value="">토마토농장 </option>
                                       <option name="f_name" value="">등록한 농장</option>
                                    </select>
                                    <span class="input-group-btn">
                                       <button class="btn btn-primary" type="submit">선택</button></span>
                                 </div>
                              </form>
                              <hr>
                              <!-- 위에서 선택한 농장의 값이 placeholder에 들어와야함
                                    농장정보수정서비스로 -->
                              <form action="" method="">
                                 <div class="panel-body">
                                    농장이름<input type="text" name="" class="form-control" value="선택한 농장이름">
                                    <br>
                                    지역선택
                                    <select class="form-control">
                                       <!-- 변경 -->
                                       <option name="f_region" value="">선택한 농장 지역</option>
                                       <option name="f_region" value="서울특별시">서울특별시</option>
                                       <option name="f_region" value="경기도">경기도</option>
                                       <option name="f_region" value="강원도">강원도</option>
                                       <option name="f_region" value="충청북도">충청북도</option>
                                       <option name="f_region" value="충청남도">충청남도</option>
                                       <option name="f_region" value="대전광역시">대전광역시</option>
                                       <option name="f_region" value="전라북도">전라북도</option>
                                       <option name="f_region" value="전라남도">전라남도</option>
                                       <option name="f_region" value="광주광역시">광주광역시</option>
                                       <option name="f_region" value="경상북도">경상북도</option>
                                       <option name="f_region" value="경상남도">경상남도</option>
                                       <option name="f_region" value="부산광역시">부산광역시</option>
                                       <option name="f_region" value="울산광역시">울산광역시</option>
                                       <option name="f_region" value="제주특별자치도">제주특별자치도</option>
                                    </select>
                                    <br>
                                    재배작목
                                    <select class="form-control">
                                       <!-- 변경 -->
                                       <option name="f_crops" value="">선택한 농장의 작목</option>
                                       <option name="f_crops" value="딸기">딸기</option>
                                       <option name="f_crops" value="오이">오이</option>
                                       <option name="f_crops" value="토마토">토마토</option>
                                       <option name="f_crops" value="파프리카">파프리카</option>
                                    </select>
                                    <br>
                                    재배시설
                                    <select class="form-control">
                                       <!-- 변경 -->
                                       <option name="f_facility" value="">선택한농장의 작목</option>
                                       <option name="f_facility" value="비닐온실">비닐온실</option>
                                       <option name="f_facility" value="유리온실">유리온실</option>
                                    </select>
                                 </div>
                           </div>
                           <center>
                              <button type="submit" class="btn btn-primary">수정완료</button>
                              <!-- 변경 
                                 농장삭제서비스 현재 선택한 농장의 값을 가지고 농장삭제메소드로 가기-->
                              <button type="submit" class="btn btn-primary">농장삭제</button>
                           </center>
                           </form>
                           <br>
                        </div>
                        <h4 class="heading">농장추가</h4>
                        <!-- 변경 : 농장추가 
                           ?다민 : 프론트 UpdateMemberService.do에서 농장정보 업데이트로 가는거 어떻게 하죵 
                            action 농장추가하는 곳 으로  -->
                           <!-- 변경 : action값 frontcontroller에서 받아옴. -->
                        <form action="UpdateMemberService.do" method="">
                           <div class="panel">
                              <div class="panel-body">

                                    <div class="input-group">
                                       농장이름<input type="text" id="fnameCheck" name="f_name" class="form-control" placeholder="농장이름을 입력해주세요."  style="margin-top: 7px;" >
                                       <button id ="fbtn" type="submit" class="btn btn-primary btn-sm">중복확인</button>   
                                    </div>
                                       <br>
                                    지역선택
                                    <select class="form-control">
                                       <option name="f_region" value="">지역을 선택해주세요.</option>
                                       <option name="f_region" value="서울특별시">서울특별시</option>
                                       <option name="f_region" value="경기도">경기도</option>
                                       <option name="f_region" value="강원도">강원도</option>
                                       <option name="f_region" value="충청북도">충청북도</option>
                                       <option name="f_region" value="충청남도">충청남도</option>
                                       <option name="f_region" value="대전광역시">대전광역시</option>
                                       <option name="f_region" value="전라북도">전라북도</option>
                                       <option name="f_region" value="전라남도">전라남도</option>
                                       <option name="f_region" value="광주광역시">광주광역시</option>
                                       <option name="f_region" value="경상북도">경상북도</option>
                                       <option name="f_region" value="경상남도">경상남도</option>
                                       <option name="f_region" value="부산광역시">부산광역시</option>
                                       <option name="f_region" value="울산광역시">울산광역시</option>
                                       <option name="f_region" value="제주특별자치도">제주특별자치도</option>
                                    </select>
                                    <br>
                                    재배작목
                                    <select class="form-control">
                                       <option name="f_crops" value="">재배작목을 선택해주세요.</option>
                                       <option name="f_crops" value="딸기">딸기</option>
                                       <option name="f_crops" value="오이">오이</option>
                                       <option name="f_crops" value="토마토">토마토</option>
                                       <option name="f_crops" value="파프리카">파프리카</option>
                                    </select>
                                    <br>
                                    재배시설
                                    <select class="form-control">
                                       <option name="f_facility" value="">재배시설을 선택해주세요. </option>
                                       <option name="f_facility" value="비닐온실">비닐온실</option>
                                       <option name="f_facility" value="유리온실">유리온실</option>
                                    </select>
                              </div>
                              <center>
                                 <!-- ?다민 : 프론트 컨트롤러 가는거여???  -->
                                 <button type="submit" class="btn btn-primary">농장추가</button>
                                 <input class="btn btn-primary" type="reset">
                              </center>
                              <br>
                           </div>
                        </form>
                     </div>
                     <!-- END RIGHT COLUMN -->
                  </div>
               </div>
            </div>
         </div>
         <!-- END MAIN CONTENT -->
      </div>
      <!-- END MAIN -->
      <div class="clearfix"></div>
      <footer>
         <div class="copyright-wrap">
            <span>
               Copyright © PAIDE Corp. All Rights Reserved.</span>
         </div>
      </footer>
   </div>
   <!-- END WRAPPER -->
   <!-- Javascript -->
   <script src="assets/vendor/jquery/jquery.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
   <script src="assets/vendor/chartist/js/chartist.min.js"></script>
   <script src="assets/scripts/klorofil-common.js"></script>
   <!-- 프로필 이미지 변경 자바스크립트 -->
   <script type="text/javascript">

      function previewImage(f) {

         let file = f.files;

         // 확장자 체크
         if (!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name)) {
            alert('gif, jpg, png 파일만 선택해 주세요.\n\n현재 파일 : ' + file[0].name);

            // 선택한 파일 초기화
            f.outerHTML = f.outerHTML;

            document.getElementById('preview').innerHTML = '';

         }
         else {

            // FileReader 객체 사용
            let reader = new FileReader();

            // 파일 읽기가 완료되었을때 실행
            reader.onload = function (rst) {
               document.getElementById('preview').innerHTML = '<img id="profileimg"  src="' + rst.target.result + '">';
               // document.getElementById('preview').profileimg = 'rst.target.result';
            }

            // 파일을 읽는다
            reader.readAsDataURL(file[0]);

         }
      }
   </script>
   <!-- 농장이름 중복체크  -->
   	<script type="text/javascript">
         //0. 농장이름 중복체크 버튼을 클릭했을 때
         $('#fbtn').on('click', function () {
            //1. 입력한 id 가져오기
            let id = $('input[name=f_name]').val();
            console.log(f_name);
   
            //2. ajax로 id 보내기(설미누나가 만든 콘 이름으로 지정해야 함.)+ 농장이름 중복메소드로 보내야함 
            $.ajax({
               url: 'UpdateMemberService.do',
               data: {//입력한 id data보내기
                  f_name: f_name //이름지정 : input태그값 
               },
               dataType: "text", //중복체크 결과값 text로 받아오기
               success: function (result) {
                  alert('성공', result);
                  if (result == 'false') {
                     //중복X
                     $('#fnameCheck').html('사용가능한 농장이름 입니다.')
                  } else {
                     //중복O
                     $('#fnameCheck').html('중복된 농장장이름 입니다.')
                  }
               },
               error: function () {
                  alert('오류입니다.');
               }
            });
   
         })
      </script>
   <!-- 비밀번홈 확인하는 제이쿼리  -->
   <script type="text/javascript">
      $(function () {
         $('#updatePW').keyup(function () {
            $('#chkNotice').html('');
         });

         $('#updatePwChk').keyup(function () {

            if ($('#updatePW').val() != $('#updatePwChk').val()) {
               $('#chkNotice').html('비밀번호 일치하지 않음');
               $('#chkNotice').attr('color', '#f82a2aa3');
            } else {
               $('#chkNotice').html('비밀번호 일치함');
               $('#chkNotice').attr('color', '#199894b3');
            }

         });
      });
   </script>
   <script>
      $(function () {
         var data, options;

         // headline charts
         data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
               [23, 29, 24, 40, 25, 24, 35],
               [14, 25, 18, 34, 29, 38, 44],
            ]
         };

         options = {
            height: 300,
            showArea: true,
            showLine: false,
            showPoint: false,
            fullWidth: true,
            axisX: {
               showGrid: false
            },
            lineSmooth: false,
         };

         new Chartist.Line('#headline-chart', data, options);


         // visits trend charts
         data = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            series: [{
               name: 'series-real',
               data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
            }, {
               name: 'series-projection',
               data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
            }]
         };

         options = {
            fullWidth: true,
            lineSmooth: false,
            height: "270px",
            low: 0,
            high: 'auto',
            series: {
               'series-projection': {
                  showArea: true,
                  showPoint: false,
                  showLine: false
               },
            },
            axisX: {
               showGrid: false,

            },
            axisY: {
               showGrid: false,
               onlyInteger: true,
               offset: 0,
            },
            chartPadding: {
               left: 20,
               right: 20
            }
         };

         new Chartist.Line('#visits-trends-chart', data, options);


         // visits chart
         data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
               [6384, 6342, 5437, 2764, 3958, 5068, 7654]
            ]
         };

         options = {
            height: 300,
            axisX: {
               showGrid: false
            },
         };

         new Chartist.Bar('#visits-chart', data, options);


         // real-time pie chart
         var sysLoad = $('#system-load').easyPieChart({
            size: 130,
            barColor: function (percent) {
               return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
            },
            trackColor: 'rgba(245, 245, 245, 0.8)',
            scaleColor: false,
            lineWidth: 5,
            lineCap: "square",
            animate: 800
         });

         var updateInterval = 3000; // in milliseconds

         setInterval(function () {
            var randomVal;
            randomVal = getRandomInt(0, 100);

            sysLoad.data('easyPieChart').update(randomVal);
            sysLoad.find('.percent').text(randomVal);
         }, updateInterval);

         function getRandomInt(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
         }

      });
   //끝
   </script>
</body>

</html>