<%@page import="game.LPG.sportsMatch.SportsMatchDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<style type="text/css">
ul {
	list-style: none;
	padding-left: 0px;
}

.myimg {
	display: inline-block;
	margin: 0;
	padding: 0;
}

table {
	width: 100%;
	border: 1px solid #444444;
}

th, td {
	border: 1px solid #444444;
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
			<h2>개인 매치 목록</h2>
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
			<div class="recentitems" data-animate="fadeIn">
				<table>
					<tbody>
						<% for(int i=0;i<list.size();i++){
							SportsMatchDTO match = list.get(i);
						%>
						
						<tr>
							<td>
								<div class="graphic-design">
									<div class="he-wrap tpl6">
										<div class="row">
											<div class="col-lg-2">
												<h2>경기시간: <%= match.getMchDate() %></h2>
											</div>
											<div class="col-lg-6">
												<h2><%= match.getGrdName() %>></h2>
												<h3><%= match.getGrdAddr() %>></h3>
												<p>매치성별:<%= match.getMchGender() %> 및 매치수준 : <%= match.getMchAbil() %> </p>
											</div>
											<div class="col-lg-4">
												<h2>매치신청</h2>
											</div>
										</div>
										<div class="he-view">
											<div id="detailGo" class="bg a0">
												<img src="/LPG/img/portfolio/portfolio_09.jpg" alt="구장사진"
													class="myimg">
												<input type="hidden" id="mchNo" name="mchNo" value="<%= match.getMchNo() %>">
											</div>
											<!-- he bg -->
										</div>
										<!-- he view -->
									</div>
									<!-- he wrap -->
								</div>
							</td>
						</tr>
						<%} %>
					</tbody>
				</table>
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