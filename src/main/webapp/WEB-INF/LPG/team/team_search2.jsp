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
			padding: 10px;
			width: 100%;
			text-align: center;
		}
		
		
		#tsearchbuttonall{
			width: 100%;
			padding-left: 25%;
			display: inline-block;
		}
		.tsearchbutton{
			padding: 10px;
			float: left;
			margin-left: 2%;
			margin-right: 2%;
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
		.footer{
			clear: both;
			padding-top: 10px;
		}
		#tttable {
		  border-collapse: collapse;
		  text-align: center;
		  width: 99%;
		}
		
		.tttd {
		  padding: 8px;
		}
		
		.tttr:nth-child(even){background-color: #f2f2f2}
	
		.ttth1 {
		  background-color: #4CAF50;
		  width : 10%;
		  border-color: black;
		  padding: 8px;
		  text-align: center;
		  color: white;
		}
		.ttth2 {
		  background-color: #4CAF50;
		  width : 30%;
		  border-color: black;
		  padding: 8px;
		  text-align: center;
		  color: white;
		}
		.ttth3 {
		  background-color: #4CAF50;
		  width : 60%;
		  border-color: black;
		  padding: 8px;
		  text-align: center;
		  color: white;
		}
		.tttr{
			height: 120px;
		}
		.tttr:hover{
		  background-color: highlight;
		  cursor: pointer;
		}
		.1{
			width: 60%;
			height: 120px;
		}
		.2{
			height: 40px;
			border: 1px red solid;
			display: inline-block;
		}
		.3{
			display: inline-block;
			float: left;
		}
		
		
		
		.ta_center{text-align: center;}
		.pagination{position: relative; box-sizing:border-box;}
		.pagination a{width: 28px; height: 28px; line-height: 28px; vertical-align: middle; display: inline-block; text-align: center;}
		.pagination a.prev_all{ background: url("http://unibell.jnkworks.com//img/common/paging_arr01.png") no-repeat center center;}
		.pagination a.prev{ background: url("http://unibell.jnkworks.com//img/common/paging_arr02.png") no-repeat center center;}
		.pagination a.next{ background: url("http://unibell.jnkworks.com//img/common/paging_arr03.png") no-repeat center center;}
		.pagination a.next_all{ background: url("http://unibell.jnkworks.com//img/common/paging_arr04.png") no-repeat center center;}
		.pagination span{ position: relative; display: inline-block; width: 28px; line-height: 28px; font-size: 13px; cursor: pointer;}
		.pagination span.active{ color: #006d14; font-size: 13px; font-weight: bold;}
		.pagination span.active:after{position: absolute; left:0; right:0; bottom: 0; top: 0;border: 1px solid #006d14; content: ""; display: block;}
		.pagination span:hover{ color: #006d14; font-size: 13px; font-weight: bold;transition : .2s ease-in-out;}
		.pagination span:hover:after{position: absolute; left:0; right:0; bottom: 0; top: 0;border: 1px solid #006d14; content: ""; display: block;}
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
				<a href="#"><input type="button" value="검색"></a>
			</div>
		</div>
		<div class="footer">
		<table id="tttable">
			<tr>
				<th class="ttth1">번호</th>
		   		<th class="ttth2">팀명</th>
		    	<th class="ttth3">팀 정보</th>
			</tr>
			<tr class="tttr" onclick="window.open('/team/final_jsp/team_info_normal.jsp')">
				<td class="tttd">1</td>
		    	<td class="tttd">A</td>
		    	<td class="tttd">
		    		
		    		<div class="1">
		    			<div class="2">
		    				<div class="">
		    					지역 : 강서구
		    				</div>
		    				<div class="3">
		    					팀 : 혼성
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					연령제한 : 20대
		    				</div>
		    				<div class="3">
		    					팀원 수 : 20명
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					실력 : 중
		    				</div>
		    				<div class="3">
		    					경기유형 : 풋살
		    				</div>
		    			</div>
		    		</div>
		    		
		    	</td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/final_jsp/team_info_normal.jsp')">
			    <td class="tttd">2</td>
			    <td class="tttd">B</td>
			    <td class="tttd">
			    	<div class="1">
		    			<div class="2">
		    				<div class="">
		    					지역 : 강서구
		    				</div>
		    				<div class="3">
		    					팀 : 혼성
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					연령제한 : 20대
		    				</div>
		    				<div class="3">
		    					팀원 수 : 20명
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					실력 : 중
		    				</div>
		    				<div class="3">
		    					경기유형 : 풋살
		    				</div>
		    			</div>
		    		</div>
			    </td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/final_jsp/team_info_normal.jsp')">
			    <td class="tttd">3</td>
			    <td class="tttd">C</td>
			    <td class="tttd">
			    	<div class="1">
		    			<div class="2">
		    				<div class="">
		    					지역 : 강서구
		    				</div>
		    				<div class="3">
		    					팀 : 혼성
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					연령제한 : 20대
		    				</div>
		    				<div class="3">
		    					팀원 수 : 20명
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					실력 : 중
		    				</div>
		    				<div class="3">
		    					경기유형 : 풋살
		    				</div>
		    			</div>
		    		</div>
			    </td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/final_jsp/team_info_normal.jsp')">
			    <td class="tttd">4</td>
			    <td class="tttd">D</td>
				<td class="tttd">
					<div class="1">
		    			<div class="2">
		    				<div class="">
		    					지역 : 강서구
		    				</div>
		    				<div class="3">
		    					팀 : 혼성
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					연령제한 : 20대
		    				</div>
		    				<div class="3">
		    					팀원 수 : 20명
		    				</div>
		    			</div>
		    			<div class="2">
		    				<div class="3">
		    					실력 : 중
		    				</div>
		    				<div class="3">
		    					경기유형 : 풋살
		    				</div>
		    			</div>
		    		</div>
				</td>
			</tr>
		</table>
	</div>
	
							<div class="pagination ta_center">
								<a href="#!" class="prev_all"></a>
								<a href="#!" class="prev"></a>
								<span class="active">1</span>
								<span>2</span>
								<span>3</span>
								<span>4</span>
								<span>5</span>
								<span>6</span>
								<span>7</span>
								<span>8</span>
								<span>9</span>
								<span>10</span>
								<a href="#!" class="next"></a>
								<a href="#!" class="next_all"></a>
							</div>
	</div>
</body>
</html>