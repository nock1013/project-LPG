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
	<!-- ���ӱ׷��� -->
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['��',  7],
          ['��',  2],
          ['��',  4],
        ]);

        var options = {
          title: '�� ����',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
    
    <!-- ����׷��� -->
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
		<h2 class="team_info_name">�� �̸�</h2>
	</div>
	<div>
		<table class="team_info">
			<tr class="ttrr">
				<td>
					<label>����</label>  | <span>����</span>
				</td>
				<td>
					<label>���� ��</label>  |  <span>00��</span>
				</td>
			</tr>
			<tr class="ttrr">
				<td>
					<label>�� Ȱ������</label>  |  <span>���</span>
				</td>
				<td>
					<label>�������</label>  |  <span>�౸</span>
				</td>
			</tr>
			<tr class="ttrr">
				<td>
					<label>�Ƿ�</label>  |  <span>��</span>
				</td>
				<td>
					<label>���� ����</label>  |  <span>20��</span>
				</td>
			</tr>
			<tr class="ttrr">
				<td>
					<label>������ ����</label>  |  <span>�˻���</span>
				</td>
				<td>
					<label>�� ����</label>  |  <span>3-3-4</span>
				</td>
			</tr>
			<tr class="ttr">
				<td colspan="2">
					<div id="team_info">�� �Ұ����� �Է����ּ���</div>
				</td>
			</tr>
			<tr class="ttr">
				<td colspan="2">
					<div id="team_manner">�� �ųʸ� �Է����ּ���</div>
				</td>
			</tr>
		</table>
	</div>			
	<div class="footer">
		<table id="tttable">
			<tr class="tttr">
				<th class="ttth">�̸�</th>
		   		<th class="ttth">
		   			<table id="tablebutton">
		   				<tr>
		   					<td class="tdbutton"></td>
		   					<td class="tdbutton">���</td>
		   					<td class="tdbutton">
		   						<a onclick="window.open('/team/final_jsp/team_member_grade.jsp')">
		   						<input type="button" value="��� ����" id="tmgbutton">
		   						</a>
		   					</td>
		   				</tr>
		   			</table>
		   		</th>
		    	<th class="ttth">������</th>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
				<td class="tttd">��00</td>
		    	<td class="tttd">�Ŵ���</td>
		    	<td class="tttd">�̵��ʴ�</td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
			    <td class="tttd">��00</td>
			    <td class="tttd">����</td>
			    <td class="tttd">���ݼ�</td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
			    <td class="tttd">��00</td>
			    <td class="tttd">����</td>
			    <td class="tttd">�����</td>
			</tr>
			<tr class="tttr" onclick="window.open('/team/html/team_member.html')">
			    <td class="tttd">��00</td>
			    <td class="tttd">����</td>
				<td class="tttd">��Ű��</td>
			</tr>
		</table>
	</div>
	<div >
		<a href="/team/final_jsp/team_mody.jsp">
		<input type="button" value="�� ���� ����" style="float: right; margin-right: 50px; margin-top: 20px;">
		</a>
	</div>
	<div style=" padding-top: 20px">
		<div id="donutchart" style="width: 50%; height: 500px; float: left"></div>
		<div id="top_x_div" style="width: 50%; height: 500px; float: left"></div>
	</div>
</body>
</html>