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
		 <h1 class="active"> �� ���� </h1>
		 <form action="" method="post">
		 	<div>
		 		<span>����</span>
		 		<input type="text" class="text" name="username">
		 	</div><br/>
		 	<div>
		 		<span>�� ����</span>
		 		<span>
		 				<select>
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
					</span>
		 	</div><br/>
		 	<div>
		 		<span>���� ����</span>
		 		<span>
		 				<select>
								<option>���� ����</option>
								<option>10��</option>
								<option>20��</option>
								<option>30��</option>
								<option>40��</option>
								<option>50���̻�</option>
						</select>
					</span>
		 	</div><br/>
		 	<div>
		 		<span>�Ҽ� ����</span>
		 		<span>
		 				<select>
								<option>����</option>
								<option>ȥ��</option>
								<option>����</option>
						</select>
					</span>
		 	</div><br/>
		 	<div>
		 		<span>�� ��� ����</span>
		 		<span>
		 				<select>
								<option>�౸</option>
								<option>ǲ��</option>
						</select>
					</span>
		 	</div><br/>
		 	<div>
		 		<span>�� �Ƿ�</span>
		 		<input type="checkbox" id="checkbox-1-1" class="custom-checkbox" />
		   		<label for="checkbox-1-1">��</label>
		 		<input type="checkbox" id="checkbox-1-2" class="custom-checkbox" />
		   		<label for="checkbox-1-2">��</label>
		 		<input type="checkbox" id="checkbox-1-3" class="custom-checkbox" />
		   		<label for="checkbox-1-3">��</label>
		 	</div><br/>
		 	<div>
		 		<span>Ȱ������</span>
		 		<a href="#"><input type="button" value="����˻�"></a>
		 	</div><br/>
		 	<div>
		 		<span>���� ���� ��������</span>
		 		<input type="radio" id="checkbox-info-1" name="openinfo" value="����">
		 		<label for="checkbox-info-1">����</label>
		 		<input type="radio" id="checkbox-info-2" name="openinfo" value="�����">
		 		<label for="checkbox-info-2">�����</label>
		 	</div>
		 	<button class="signin">
		      	�� �����ϱ�
		    </button>
		 </form>
	</div>
</body>
</html>