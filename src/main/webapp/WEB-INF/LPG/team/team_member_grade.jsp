<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=EUC-KR">
	<title>Insert title here</title>
	<style type="text/css">
		#mgradetotal{
			display: inline-block;
			width: 100%;
			padding: 10px;
			text-align: center;
		}
		.mgradetable{
			border: 1px black solid;
			float: left;
			width: 33%;
			padding-top: 5px;
			padding-bottom: 5px;
		}
		#mgradesubmit{
			float: right;
			margin-right: 50px;
			margin-top: 20px;
		}
		input[type="select"]{
			
		}
	</style>
</head>
<body>
	<div>
		<form action="" method="post" >
			<div id="mgradetotal">
				<h1>���� ���</h1>
				<div>
					<div class="mgradetable">�̸�</div>
					<div class="mgradetable">���� ���</div>
					<div class="mgradetable">���� �� ���</div>
				</div><br/>
				<div>
					<div class="mgradetable">��00</div>
					<div class="mgradetable">�Ŵ���</div>
					<div class="mgradetable">�Ŵ���</div>
				</div>
				<div>
					<div class="mgradetable">��00</div>
					<div class="mgradetable">����</div>
					<div class="mgradetable">
						<select>
							<option value="����" selected="selected">����</option>
							<option value="����">����</option>
						</select>
					</div>
				</div>
				<div>
					<div class="mgradetable">��00</div>
					<div class="mgradetable">����</div>
					<div  class="mgradetable">
						<select>
							<option value="����">����</option>
							<option value="����" selected="selected">����</option>
						</select>
					</div>
				</div>
				<div>
					<div class="mgradetable">��00</div>
					<div class="mgradetable">����</div>
					<div  class="mgradetable">
						<select>
							<option value="����">����</option>
							<option value="����" selected="selected">����</option>
						</select>
					</div>
				</div>
			</div>
			<input type="submit" value="�����ϱ�" id="mgradesubmit">
		</form>
	</div>
</body>
</html>