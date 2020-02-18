<%@page import="java.util.List"%>
<%@page import="game.LPG.sportsMatch.SportsMatchDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<head>
<meta charset="UTF-8">
<style type="text/css">
ul {
	list-style: none;
	padding-left: 0px;
}

.myimg {
	display: inline-block;
	width: 33%;
	height: auto;
	margin: 0;
	padding: 0;
}
</style>
</head>

<body>

	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->
	<% List<SportsMatchDTO> list = (List<SportsMatchDTO>)request.getAttribute("matchlist"); %>
	<div class="container centered">
		<div>
			<div class="hline"></div>
			<h2>팀 매치 목록</h2>
			<div class="hline"></div>
			<!-- <div class="mbsc-page demo-week-view">
				<div class="mbsc-form">
					<div class="mbsc-form-group">
						<div id="demo-one-week"></div>
					</div> -->
			<!-- 	</div>
			</div> -->
		</div>
	</div>
	<div id="portfoliowrap">
		<div class="portfolio-centered container">
			<div class="recentitems portfolio" data-animate="fadeIn">
				<!-- 중심 -->
				<% for(int i=0;i<list.size();i++){ 
						SportsMatchDTO match = list.get(i);
				%>
				<div class="graphic-design">
					<div class="he-wrap tpl6" <% if(match.getMchUrgent().equals("긴급")){%>style="border: 3px solid red;"<%} %>>
						<img src="/LPG/img/"+<%= match.getTeamEmblem()%> alt="팀앰블럼" class="myimg"> 
						<img src="/LPG/img/portfolio/versus.jpg" alt="" class="myimg"> 
						<img src="/LPG/img/"+<%= match.getTeamEmblem()%> alt="팀앰블럼" class="myimg">
						<div class="he-view">
							<div id="detailGo" class="bg a0">
								<h3 class="a1" data-animate="fadeInDown" style="word-spacing: 350px">HOME VS AWAY</h3>
								<h4 class="a1" data-animate="fadeInDown" style="word-spacing: 735px">
									<%= match.getTeamName() %> <%= match.getGrdName()%> <%= match.getTeamName() %></h4>
								<h4 class="a1" data-animate="fadeInDown" style="word-spacing: 735px">
									<%= match.getTeamName() %> <%= match.getGrdArea()%> <%= match.getTeamName() %></h4>
								<input type="hidden" id="mchNo" name="mchNo" value="<%= match.getMchNo() %>">
							</div>
							
							<!-- he bg -->
						</div>
						<!-- he view -->
					</div>
					<!-- he wrap -->
				</div>
				<!-- end col-12 -->
				<% } %>
			</div>
			<!-- portfolio -->
			<!-- 중심 -->
			
		</div>
		<!-- portfolio container -->
	</div>
	<!--/Portfoliowrap -->
	<script type="text/javascript">
		mchNo = $("#mchNo").val();
		$(document).ready(function() {
			$("#detailGo").on("click", function(){
				location.href="/LPG/match/mchTeamDetail.do?mchNo="+mchNo;
			});
		});
	</script>
</body>
</html>