<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
		table,th,td{border: 1px solid; border-collapse: collapse;}
		.emblum{
			background-color: blue;
			margin-top: 30px;
			margin-left: auto;
			margin-right: auto;
			width: 170px;
			height: 170px;
			border-radius: 100px;
		}
		.team_info_name{
			background-color: red;
			padding: 7px;
			margin-left: auto;
			margin-right: auto;
			border-radius: 30px;
			text-align: center;
			width: 200px;
			}
		.team_img{
			background-color: #e0e0e0;
			width: 40%;
			height: 300px;
			float: left;
		}
		.team_info{
		float: left;
		width: 60%;
		height: 100%;
		text-align: center;
		}
		.footer{
			clear: both;
			padding-top: 10px;
		}
		#tttable {
		  border-collapse: collapse;
		  width: 100%;
		  text-align: center;
		}
		
		.tttd {
		  padding: 8px;
		}
		
		.tttr:nth-child(even){background-color: #f2f2f2}
		
		.tttr:hover{
		  background-color: highlight;
		  cursor: pointer;
		}
		.ttth {
		  background-color: #4CAF50;
		  width : 33%;
		  border-color: black;
		  padding: 8px;
		  text-align: center;
		  color: white;
		}
		.ttrr{
		  height: 35px;
		}
		.ttrr td{
			width: 50%;
		}
		.ttr{
		  height: 79px;
		}
		#tablebutton{
		  width: 100%;
		  border: hidden;
		}
		.tdbutton{
		  width: 33%;
		  border: hidden;
		}
		.tmgbutton{
		  float: right;
		}
	</style>
	<!-- 도넛그래프 -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['승',  7],
          ['무',  2],
          ['패',  4],
        ]);

        var options = {
          title: '팀 전적',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
    
    <!-- 막대그래프 -->
     <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['', 'POINT'],
          ["Goal", 44],
          ["Assist", 31],
          ["Lose", 12],
        ]);

        var options = {
          title: 'Chess opening moves',
          width: 900,
          legend: { position: 'none' },
          chart: { title: '',
                   subtitle: '' },
          bars: 'horizontal', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'top', label: 'POINT'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      };
    </script>
</head>
<body>
	<div class="team_img">
		<div class="emblum"></div>
		<h2 class="team_info_name">팀 이름</h2>
	</div>
	<div>
		<table class="team_info">
			<tr class="ttrr">
				<td>
					<label>지역</label>  | <span>서울</span>
				</td>
				<td>
					<label>팀원 수</label>  |  <span>00명</span>
				</td>
			</tr>
			<tr class="ttrr">
				<td>
					<label>주 활동구장</label>  |  <span>어디</span>
				</td>
				<td>
					<label>경기유형</label>  |  <span>축구</span>
				</td>
			</tr>
			<tr class="ttrr">
				<td>
					<label>실력</label>  |  <span>중</span>
				</td>
				<td>
					<label>연령 제한</label>  |  <span>20대</span>
				</td>
			</tr>
			<tr class="ttrr">
				<td>
					<label>유니폼 설명</label>  |  <span>검빨색</span>
				</td>
				<td>
					<label>주 전술</label>  |  <span>3-3-4</span>
				</td>
			</tr>
			<tr class="ttr">
				<td colspan="2">
					<div id="team_info">팀 소개글을 입력해주세요</div>
				</td>
			</tr>
			<tr class="ttr">
				<td colspan="2">
					<div id="team_manner">팀 매너를 입력해주세요</div>
				</td>
			</tr>
		</table>
	</div>			
	<div class="footer">
		<table id="tttable">
			<tr class="tttr">
				<th class="ttth">이름</th>
		   		<th class="ttth">
		   			<table id="tablebutton">
		   				<tr>
		   					<td class="tdbutton"></td>
		   					<td class="tdbutton">등급</td>
		   					<td class="tdbutton">
		   						<a onclick="window.open('/team/final_jsp/team_member_grade.jsp')">
		   						<input type="button" value="등급 변경" id="tmgbutton">
		   						</a>
		   					</td>
		   				</tr>
		   			</table>
		   		</th>
		    	<th class="ttth">포지션</th>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
				<td class="tttd">김00</td>
		    	<td class="tttd">매니저</td>
		    	<td class="tttd">미드필더</td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
			    <td class="tttd">이00</td>
			    <td class="tttd">주장</td>
			    <td class="tttd">공격수</td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
			    <td class="tttd">박00</td>
			    <td class="tttd">팀원</td>
			    <td class="tttd">수비수</td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
			    <td class="tttd">최00</td>
			    <td class="tttd">팀원</td>
				<td class="tttd">골키퍼</td>
			</tr>
		</table>
	</div>
	<div >
		<a href="/team/final_jsp/team_mody.jsp">
		<input type="button" value="팀 정보 수정" style="float: right; margin-right: 50px; margin-top: 20px;">
		</a>
	</div>
	<div style=" padding-top: 20px">
		<div id="donutchart" style="width: 50%; height: 500px; float: left"></div>
		<div id="top_x_div" style="width: 50%; height: 500px; float: left"></div>
	</div>
</body>
</html>