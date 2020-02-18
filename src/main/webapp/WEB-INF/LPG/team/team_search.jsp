<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
		#tsearchtotal{
			display: inline-block;
			border: 1px black solid;
			padding: 10px;
			width: 100%;
			text-align: center;
		}
		
		
		#tsearchbuttonall{
			width: 100%;
			padding: 10px;
			border: 1px blue solid;
			display: inline-block;
			text-align: justify;
		}
		.tsearchbutton{
			padding: 10px;
			border: 1px red solid;
			float: left;
			margin-left: 5px;
			margin-right: 5px;
		}
		
		
		#tnumnameinfo{
			border: 1px red solid;
			display: inline-block;
		}
		.tnum{
			width: 100px;
			float: left;
			border: 1px green solid;
		}
		.tname{
			width: 250px;
			float: left;
			border: 1px green solid;
			}
		.tinfo{
			width: 600px;
			float: left;
			border: 1px green solid;
		}
	</style>
</head>
<body>
	<div id="tsearchtotal">
		<div id="tsearchbuttonall">
			<div class="tsearchbutton">
				<select>
					<option value="성별">성별</option>
					<option value="남성">남성</option>
					<option value="혼성">혼성</option>
					<option value="여성">여성</option>
				</select>
			</div>
			<div class="tsearchbutton">
				<select>
					<option>연령 제한</option>	
					<option>10대</option>
					<option>20대</option>
					<option>30대</option>
					<option>40대</option>
				</select>
			</div>
			<div class="tsearchbutton">
				<select>
					<option>지역(서울)</option>
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
			</div>
			<div class="tsearchbutton">
				<input type="text" placeholder="검색어를 입력해주세요">
				<input type="button" value="검색">
			</div>
		</div><br/><br/>
		<div id="tnumnameinfo">
			<div class="tnum">번호</div>
			<div class="tname">팀명</div>
			<div class="tinfo">팀 정보</div>
		</div>
	</div>
</body>
</html>