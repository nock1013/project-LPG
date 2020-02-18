<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Solid - Bootstrap Business Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700,900|Lato:400,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
  <link href="lib/hover/hoverex-all.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Solid
    Template URL: https://templatemag.com/solid-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  <title>:: 다음 주소록 API ::</title>

<script type="text/JavaScript"
	src="http://code.jquery.com/jquery-1.7.min.js"></script>

<script type="text/JavaScript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
	function openDaumZipAddress() {

		new daum.Postcode({

			oncomplete : function(data) {

				jQuery("#postcode1").val(data.postcode1);

				jQuery("#postcode2").val(data.postcode2);

				jQuery("#zonecode").val(data.zonecode);

				jQuery("#address").val(data.address);

				jQuery("#address_etc").focus();

				console.log(data);

			}

		}).open();

	}
</script>
<style type="text/css">
	.form-control{
		width: 80%;
	}

</style>
  
</head>

<body>

  <!-- Fixed navbar -->
  <div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <a class="navbar-brand" href="index.html">SOLID.</a>
      </div>
      <div class="navbar-collapse collapse navbar-right">
        <ul class="nav navbar-nav">
          <li><a href="index.html">HOME</a></li>
          <li><a href="about.html">ABOUT</a></li>
          <li class="active"><a href="contact.html">CONTACT</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="blog.html">BLOG</a></li>
              <li><a href="single-post.html">SINGLE POST</a></li>
              <li><a href="portfolio.html">PORTFOLIO</a></li>
              <li><a href="single-project.html">SINGLE PROJECT</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </div>

  <!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
  <div id="blue">
    <div class="container">
      <div class="row">
        <h3>Contact.</h3>
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /blue -->


  <!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->

  <div class="container mtb">
    <div class="row">
      <div class="col-lg-8">
        <h4>회원가입 정보입력</h4>
        <div class="hline"></div>
        <p></p>
        <form class="contact-form php-mail-form" role="form" action="contactform/contactform.php" method="POST">

            
			
			<div class="form-group" style="display: inline-block; width: 100%;" >
				<label>아이디</label>
				<br/>
				<input type="text" name="id" class="form-control" id="contact-name" placeholder="아이디입력" maxlength="15" style="width: 80%; float: left;">
				<input type="button" class="btn-theme" value="중복체크" style="float: left; position: relative; top: -5px;">
				<div class="validate"></div>
			</div>
			
			<div class="form-group">
				<label>패스워드</label>
				<input type="password" name="pw"
					class="form-control" id="contact-pw" placeholder="패스워드입력"
					maxlength="20">
				<div class="validate"></div>
			</div>
			
			<div class="form-group">
				<label>패스워드확인</label>
				<input type="password" name="confirmPw" class="form-control" id="contact-confirmPw" placeholder="패스워드확인입력" maxlength="20">
				<div class="validate"></div>
			</div>
			
			<div class="form-group">
				<label>이름</label>
				<input type="text" name="name" class="form-control" id="contact-name" placeholder="이름입력" data-rule="minlen:4" data-msg="Please enter at least 4 chars" maxlength="20">
				<div class="validate"></div>
			</div>
			
			<div class="form-group">
				<label>별명</label>
				<input type="text" name="nickname" class="form-control" id="contact-nickname" placeholder="별명입력" maxlength="30">
				<div class="validate"></div>
			</div>
			
			<div class="form-group">
				<label>전화번호</label>
				<input type="tel" name="tel" class="form-control" id="contact-tel" placeholder="전화번호입력" maxlength="11">
				<div class="validate"></div>
			</div>
			
			<div class="form-group">
				<label>성별</label>
					<div>
						<span>남자<input type="radio" name="gender" class="" id="contact-gender"></span>
						<span>여자<input type="radio" name="gender" class="" id="contact-gender"></span>
					</div>
				<div class="validate">
				</div>
			</div>
			
			<div class="form-group">
				<label>생년월일</label>
				<input type="date" name="birth" class="form-control" placeholder="생년월일" style="height: 45px;">
				<div class="validate"></div>
			</div>
			<div class="form-group">
				<label>주소</label>
				<br/> 
				<input id="postcode1" type="text" value="" style="width: 100px;" readonly /> &nbsp;-&nbsp;
				<input id="postcode2" type="text" value="" style="width: 100px;" readonly />&nbsp;&nbsp; 
				<input id="zonecode" type="text" value="" style="width: 100px;" readonly /> &nbsp; 
				<input type="button" onClick="openDaumZipAddress();" value="주소 찾기" class="btn-theme" />
				<br/> 
				<input type="text" id="address" class="form-" value="" style="width: 230px;" readonly />
				<input type="text" id="address_etc" value="" style="width: 365px;" />
			</div>
			
			<div class="form-group" style="display: inline-block; width: 100%">
				<label>이메일</label><br/>
				<input type="email" name="email" class="form-control" id="contact-email" placeholder="이메일 입력" data-rule="email" 
											data-msg="Please enter a valid email" maxlength="35" style="width: 80%; float: left;"> 
				
				<input type="button" value="인증보내기" class="btn-theme" style="float: left; position: relative;top: -5px;"/>
				<div class="validate"></div>
			</div>
			<div class="form-group">
				<input type="text" name="certification" class="form-control" id="contact-cf" placeholder="인증번호입력" maxlength="10" style="width: 200px;"/>
			</div>
				<br/>
				<input type="button" value="회원가입" class="btn-theme" style="width: 500px;">	
          </form>
      </div>

      <div class="col-lg-4">
        
      </div>
    </div>
  </div>


  <!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
  <div id="footerwrap">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <h4>About</h4>
          <div class="hline-w"></div>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
        </div>
        <div class="col-lg-4">
          <h4>Social Links</h4>
          <div class="hline-w"></div>
          <p>
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-tumblr"></i></a>
          </p>
        </div>
        <div class="col-lg-4">
          <h4>Our Address</h4>
          <div class="hline-w"></div>
          <p>
            Some Ave, 987,<br/> 23890, New York,<br/> United States.<br/>
          </p>
        </div>

      </div>
    </div>
  </div>

  <div id="copyrights">
    <div class="container">
      <p>
        &copy; Copyrights <strong>Solid</strong>. All Rights Reserved
      </p>
      <div class="credits">
        <!--
          You are NOT allowed to delete the credit link to TemplateMag with free version.
          You can delete the credit link only if you bought the pro version.
          Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/solid-bootstrap-business-template/
          Licensing information: https://templatemag.com/license/
        -->
        Created with Solid template by <a href="https://templatemag.com/">TemplateMag</a>
      </div>
    </div>
  </div>
  <!-- / copyrights -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/prettyphoto/js/prettyphoto.js"></script>
  <script src="lib/isotope/isotope.min.js"></script>
  <script src="lib/hover/hoverdir.js"></script>
  <script src="lib/hover/hoverex.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
