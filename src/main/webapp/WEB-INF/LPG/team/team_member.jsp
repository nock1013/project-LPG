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
					<td>�̸�</td>
				</tr>
			</table>
			<table id="iminfo">
			<tr>
				<td>���</td>
				<td>�Ŵ���</td>
			</tr>
			<tr>
				<td>��ѹ�</td>
				<td>11</td>
			</tr>
			<tr>
				<td>����</td>
				<td>20</td>
			</tr>
			<tr>
				<td>������</td>
				<td>�̵��ʴ�</td>
			</tr>
			<tr>
				<td>����</td>
				<td>������</td>
			</tr>
			<tr>
				<td>�ֹ�</td>
				<td>�޹�</td>
			</tr>
			<tr>
				<td>�� ���Գ�¥</td>
				<td>2020/01/01</td>
			</tr>
			</table>
		</div>
		<div id="tmrecord">
			<table>
				<tr>
					<th rowspan="2">�� ���� Ƚ��</th>
					<th rowspan="2">�·�</th>
					<th rowspan="2">��</th>
					<th rowspan="2">��ý�Ʈ</th>
					<th colspan="2">����</th>
				</tr>
				<tr>
					<td>�⿩��</td>
					<td>�ų�</td>
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
		<input style="float: right;" type="button" value="������" onclick="window.close()">
	</div>
</body>
</html>