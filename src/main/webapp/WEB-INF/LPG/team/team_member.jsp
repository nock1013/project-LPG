<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
		table,th,td{border: 1px solid; border-collapse: collapse;}
		table{
			text-align: center;
		}
		th{
			width: 20%;
		}
		#tmrecord{
			margin-top: 100px;
			float: none;
		}
		#tmdiv{
			width: 60%;
		}
		#tmimgname{
			width: 280px;
			float: left;
		}
		#tmimg{
			height: 280px;
		}
		#tmname{
			height: 70px;
		}
		#iminfo{
			width: 300px;
			float: left;
			height: 350px;
			margin-left: 100px;
		}
	</style>
</head>
<body>
	<div id="tmdiv" style="background-color: yellow;">
		<div>
			<table id="tmimgname">
				<tr>
				<td><img src="../image/picturebasic.jpeg" id="tmimg"></td>
				</tr>
				<tr id="tmname">
					<td>이름</td>
				</tr>
			</table>
			<table id="iminfo">
			<tr>
				<td>등급</td>
				<td>매니저</td>
			</tr>
			<tr>
				<td>백넘버</td>
				<td>11</td>
			</tr>
			<tr>
				<td>나이</td>
				<td>20</td>
			</tr>
			<tr>
				<td>포지션</td>
				<td>미드필더</td>
			</tr>
			<tr>
				<td>성향</td>
				<td>공격적</td>
			</tr>
			<tr>
				<td>주발</td>
				<td>왼발</td>
			</tr>
			<tr>
				<td>팀 가입날짜</td>
				<td>2020/01/01</td>
			</tr>
			</table>
		</div>
		<div id="tmrecord">
			<table>
				<tr>
					<th rowspan="2">팀 게임 횟수</th>
					<th rowspan="2">승률</th>
					<th rowspan="2">골</th>
					<th rowspan="2">어시스트</th>
					<th colspan="2">평점</th>
				</tr>
				<tr>
					<td>기여도</td>
					<td>매너</td>
				</tr>
				<tr>
					<td>20</td>
					<td>60%</td>
					<td>4</td>
					<td>3</td>
					<td>8</td>
					<td>7</td>
				</tr>
			</table>
		</div>
		<input style="float: right;" type="button" value="나가기" onclick="window.close()">
	</div>
</body>
</html>