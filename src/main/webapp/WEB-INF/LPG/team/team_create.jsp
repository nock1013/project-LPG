<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
		.login {
		  position: relative;
		  font-family: 'NanumSquare_acR';
		  color:white;
		  height: 900px;
		  width: 100%;
		  margin: auto;
		  padding: 20px 20px;
		  background:  no-repeat   center center #505050;   
		  background-size: cover;
		  box-shadow: 0px 30px 60px -5px #000;
		}
		.signin {
		  background-color: #d3d3d3;
		  color: #fff;
		  font-size: 14px;
		  letter-spacing: 1px;
		}
		
		.active {
		  border-bottom: 2px solid #1161ed;
		}
		h1 {
		  padding-left: 12px;
		  color:white;
		  font-size: 22px;
		  text-transform: uppercase;
		  padding-bottom: 5px;
		  letter-spacing: 2px;
		  display: inline-block;
		  font-weight: 100;
		  margin-left: 20px;
		}
		h1:first-child {
		  padding-left: 0px;
		}
		form {
		  padding-top: 30px;
		}
		.signin {
		  background-color: #1161ed;
		  color: #FFF;
		  width: 100%;
		  padding: 10px 20px;
		  display: block;
		  height: 39px;
		  border-radius: 20px;
		  margin-top: 30px;
		  transition: all 0.5s ease-in-out;
		  border: none;
		  text-transform: uppercase;
		}
		
		.signin:hover {
		  background: #4082f5;
		  box-shadow: 0px 4px 35px -5px #4082f5;
		  cursor: pointer;
		}
		
		.signin:focus {
		  outline: none;
		}
		input[type="text"]{
			font-size: 14px;
		  width: 50%;
		  color: #fff;
		}
		input[type="button"]{
			width:20%;
			background-color: #626262;
		}
		input[type="radio"]{
			width:20%
		}
		input[type="checkbox"]{
		margin-left: 30px;
		width:10px;
		vertical-align: 20px;
		}
		.text {
		  border: none;
		  width: 89%;
		  padding: 10px 20px;
		  display: inline-block;
		  height: 15px;
		  border-radius: 20px;
		  background: rgba(255, 255, 255, 0.1);
		  border: 2px solid rgba(255, 255, 255, 0);
		  overflow: hidden;
		  margin-top: 15px;
		  transition: all 0.5s ease-in-out;
		}
		span {
		  font-size: 17px;
		  color:fff;
		  width: 30%;
		  text-align: center;
		  opacity: 0.4; 
		  display: inline-block;
		  transition: all 0.5s ease-in-out;
		}
		.team_textarea{
			position: relative;
			bottom: 35px;
		}
		
		.custom-checkbox {
			margin-left: 20px;
		  -webkit-appearance: none;
		  background-color: rgba(255, 255, 255, 0.1);
		  padding: 8px;
		  border-radius: 2px;
		  display: inline-block;
		  position: relative;
		  top: 6px;
		}
		
		.custom-checkbox:checked {
		  background-color: rgba(17, 97, 237, 1);
		}
		
		.custom-checkbox:checked:after {
		  content: '\2714';
		  font-size: 10px;
		  position: absolute;
		  top: 1px;
		  left: 4px;
		  color: #fff;
		}
		
		.custom-checkbox:focus {
		  outline: none;
		}
		
	</style>
</head>
<body>
	<div class="login">
		 <h1 class="active"> 팀 생성 </h1>
		 <form action="" method="post">
		 	<div>
		 		<span>팀명</span>
		 		<input type="text" class="text" name="username">
		 	</div><br/>
		 	<div>
		 		<span>팀 지역</span>
		 		<span>
		 				<select>
								<option>강서구</option>
								<option>강동구</option>
								<option>강남구</option>
								<option>성북구</option>
								<option>중구</option>
								<option>은평구</option>
								<option>금천구</option>
								<option>광친구</option>
								<option>서대문구</option>
								<option>중랑구</option>
								<option>강북구</option>
								<option>관악구</option>
								<option>구로구</option>
								<option>영등포구</option>
								<option>마포구</option>
								<option>종로구</option>
								<option>도봉구</option>
								<option>용산구</option>
								<option>동작구</option>
								<option>서초구</option>
								<option>송파구</option>
								<option>노원구</option>
								<option>성동구</option>
								<option>양천구</option>
								<option>동대문구</option>
						</select>
					</span>
		 	</div><br/>
		 	<div>
		 		<span>연령 제한</span>
		 		<span>
		 				<select>
								<option>제한 없음</option>
								<option>10대</option>
								<option>20대</option>
								<option>30대</option>
								<option>40대</option>
								<option>50대이상</option>
						</select>
					</span>
		 	</div><br/>
		 	<div>
		 		<span>소속 유형</span>
		 		<span>
		 				<select>
								<option>남성</option>
								<option>혼성</option>
								<option>여성</option>
						</select>
					</span>
		 	</div><br/>
		 	<div>
		 		<span>주 경기 유형</span>
		 		<span>
		 				<select>
								<option>축구</option>
								<option>풋살</option>
						</select>
					</span>
		 	</div><br/>
		 	<div>
		 		<span>팀 실력</span>
		 		<input type="checkbox" id="checkbox-1-1" class="custom-checkbox" />
		   		<label for="checkbox-1-1">상</label>
		 		<input type="checkbox" id="checkbox-1-2" class="custom-checkbox" />
		   		<label for="checkbox-1-2">중</label>
		 		<input type="checkbox" id="checkbox-1-3" class="custom-checkbox" />
		   		<label for="checkbox-1-3">하</label>
		 	</div><br/>
		 	<div>
		 		<span>활동구장</span>
		 		<a href="#"><input type="button" value="구장검색"></a>
		 	</div><br/>
		 	<div>
		 		<span>팀원 정보 공개여부</span>
		 		<input type="radio" id="checkbox-info-1" name="openinfo" value="공개">
		 		<label for="checkbox-info-1">공개</label>
		 		<input type="radio" id="checkbox-info-2" name="openinfo" value="비공개">
		 		<label for="checkbox-info-2">비공개</label>
		 	</div>
		 	<button class="signin">
		      	팀 생성하기
		    </button>
		 </form>
	</div>
</body>
</html>