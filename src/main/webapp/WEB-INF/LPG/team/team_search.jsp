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
					<option value="����">����</option>
					<option value="����">����</option>
					<option value="ȥ��">ȥ��</option>
					<option value="����">����</option>
				</select>
			</div>
			<div class="tsearchbutton">
				<select>
					<option>���� ����</option>	
					<option>10��</option>
					<option>20��</option>
					<option>30��</option>
					<option>40��</option>
				</select>
			</div>
			<div class="tsearchbutton">
				<select>
					<option>����(����)</option>
					<option>������</option>
					<option>������</option>
					<option>������</option>
					<option>���ϱ�</option>
					<option>�߱�</option>
					<option>����</option>
					<option>��õ��</option>
					<option>��ģ��</option>
					<option>���빮��</option>
					<option>�߶���</option>
					<option>���ϱ�</option>
					<option>���Ǳ�</option>
					<option>���α�</option>
					<option>��������</option>
					<option>������</option>
					<option>���α�</option>
					<option>������</option>
					<option>��걸</option>
					<option>���۱�</option>
					<option>���ʱ�</option>
					<option>���ı�</option>
					<option>�����</option>
					<option>������</option>
					<option>��õ��</option>
					<option>���빮��</option>
				</select>
			</div>
			<div class="tsearchbutton">
				<input type="text" placeholder="�˻�� �Է����ּ���">
				<input type="button" value="�˻�">
			</div>
		</div><br/><br/>
		<div id="tnumnameinfo">
			<div class="tnum">��ȣ</div>
			<div class="tname">����</div>
			<div class="tinfo">�� ����</div>
		</div>
	</div>
</body>
</html>