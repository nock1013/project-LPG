<%@page import="game.LPG.userSports.UserSportsDTO"%>
<%@page import="game.LPG.user.UserDTO"%>
<%@page import="game.LPG.sportsMatch.SportsMatchDTO"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8"%>
<head>


<style type="text/css">
#myfix {
	position: fixed;
	bottom: 0px;
	left: 0px;
	width: 100%
}
</style>
</head>


<body>
<% 
UserDTO user = (UserDTO)session.getAttribute("loginUserInfo"); 
UserSportsDTO userSprots = (UserSportsDTO) session.getAttribute("userSports");
SportsMatchDTO dto= (SportsMatchDTO)request.getAttribute("sportsMatchList");%>
<div class="container mtb">
    <div class="row">
      <div class="col-sm-8">
        <h4>경기일자</h4>
        <div class="hline"></div>
        <form class="form-horizontal style-from"  >
          		
			<div class="form-group">
				<div class="row">
				<div class="col-sm-7">경기시간<input type="text" class="form-control"  disabled="disabled" value="<%=dto.getMchDate()%>,<%=dto.getMchDateStart() %>,<%=dto.getMchDateEnd()%>" ></div>     
				<div class="col-sm-7">구장명<input type="text" class="form-control"  disabled="disabled" value=<%= dto.getMchGrd() %>></div>
				<div class="col-sm-7">구장주소<input type="text" class="form-control"  disabled="disabled" value=<%= "조인 해서 써야할 것" %>></div>
				<div class="col-sm-7">참가비(구장비)<input type="text" class="form-control" disabled="disabled" value=<%= dto.getMchPrice() %>></div>
				<div class="col-sm-7">필요인원<input type="text" class="form-control" disabled="disabled" value=<%= dto.getMchPlay() %>></div>
				<div class="col-sm-7">내용<input type="text" class="form-control" disabled="disabled" value=<%= dto.getMchContent() %>></div>
				</div>
			</div>
			
			 <div class="hline"></div>
				<div class="form-group">
				<div class="row">
				<div class="col-sm-7">인원(경기타입)<input type="text" class="form-control"  disabled="disabled" value=<%= dto.getMchType() %>></div>
				<div class="col-sm-7">매치성별<input type="text" class="form-control"  disabled="disabled" value=<%= dto.getMchGender() %>></div>
				<div class="col-sm-7">요구실력<input type="text" class="form-control"  disabled="disabled" value=<%= dto.getMchAbil() %>></div>
				<div class="col-sm-7">착용가능한 슈즈<input type="text" class="form-control"  disabled="disabled" value=<%= dto.getMchShoes() %>></div>
				<div class="col-sm-7">현재 참여인원<input type="text" class="form-control" disabled="disabled" value=<%= "조인 해서 써야할 것" %>></div>
				<div class="col-sm-7">내용<input type="text" class="form-control"  disabled="disabled" value=<%= dto.getMchContent() %>></div>
				</div>
			</div>
			
		
        
           
			
     

          </form>
      </div>

	      <div class="col-sm-4">
	                              
	      </div>
    </div>
  </div>
  <div id="myfix">
		<form action="">
			<input type="submit" value="매치신청" class="btn btn-block btn-theme">
		</form>
	</div>

  
</body>
</html>
