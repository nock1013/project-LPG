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
				<h1>팀원 등급</h1>
				<div>
					<div class="mgradetable">이름</div>
					<div class="mgradetable">현재 등급</div>
					<div class="mgradetable">변경 할 등급</div>
				</div><br/>
				<div>
					<div class="mgradetable">김00</div>
					<div class="mgradetable">매니저</div>
					<div class="mgradetable">매니저</div>
				</div>
				<div>
					<div class="mgradetable">이00</div>
					<div class="mgradetable">주장</div>
					<div class="mgradetable">
						<select>
							<option value="주장" selected="selected">주장</option>
							<option value="팀원">팀원</option>
						</select>
					</div>
				</div>
				<div>
					<div class="mgradetable">박00</div>
					<div class="mgradetable">팀원</div>
					<div  class="mgradetable">
						<select>
							<option value="주장">주장</option>
							<option value="팀원" selected="selected">팀원</option>
						</select>
					</div>
				</div>
				<div>
					<div class="mgradetable">최00</div>
					<div class="mgradetable">팀원</div>
					<div  class="mgradetable">
						<select>
							<option value="주장">주장</option>
							<option value="팀원" selected="selected">팀원</option>
						</select>
					</div>
				</div>
			</div>
			<input type="submit" value="변경하기" id="mgradesubmit">
		</form>
	</div>
</body>
</html>