<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR">
	<title>Insert title here</title>
</head>
<body>
	<div class="ranking_option_box">
	<div class="option">
		<span class="sub_list02">지역</span>
		<select name="local_value2" id="local_value2" class="select_local">
			<option value="" selected>전체 지역</option>
					<option value="1/" >서울</option>
					<option value="2/" >경기</option>
					<option value="3/" >강원</option>
					<option value="4/" >충청</option>
					<option value="5/" >전라</option>
					<option value="7/" >제주</option>
					<option value="6/" >경상</option>
				</select>
		<select name="local_value2_2" id="local_value2" class="select_local2">
			</select>
	</div>
	<div class="option">
		<span class="sub_list02">팀</span>
		<select name="team_value2" id="team_value2" class="select_team">
			<option value="" selected="">전체 </option>
					<option value="청소년">청소년</option>
					<option value="대학생">대학생</option>
					<option value="직장인">직장인</option>
					<option value="일반동호회">일반동호회</option>
					<option value="여성팀">여성팀</option>
					<option value="기타단체">기타단체</option>
				</select>
	</div>
	<div class="option">
		<span class="sub_list02">연령</span>
		<select name="age_value2" id="age_value2" class="select_age">
			<option value="" selected="">전체 연령</option>
					<option value="10대">10대</option>
					<option value="20대">20대</option>
					<option value="30대">30대</option>
					<option value="40대">40대</option>
					<option value="50대">50대</option>
					<option value="60대이상">60대이상</option>
				</select>
	</div>
	<div class="btn">
		<div class="com_btn">
			<input type="text" name="stx" id="stx" class="input_form w100p h28p" value="">
			<input type="submit" class="match_btn" value="검색">
			<a href="#" id="search_reset" data-fade="fade"><div class="sng_reset_btn">초기화</div></a>
		</div>	
	</div>
</div>
</body>
</html>