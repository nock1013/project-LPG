<%@page import="game.LPG.soccerteam.TeamDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Solid - Bootstrap Business Template</title>
  <style type="text/css">
 		#tsearchtotal{
			display: inline-block;
			padding: 10px;
			width: 100%;
		}
		
		
		#tsearchbuttonall{
			width: 100%;
			display: inline-block;
		}
		.tsearchbutton{
			padding: 10px;
			float: left;
			margin-left: 2%;
			margin-right: 2%;
			position: relative;top: 15px;
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
		.footer{
			clear: both;
			padding-top: 10px;
			width: 90%;
		}
		#tttable {
		  border-collapse: collapse;
		  text-align: center;
		  width: 99%;
		}
		
		.tttd {
		  padding: 8px;
		  font-size: 30px;
		}
		
		.tttr:nth-child(even){background-color: #f2f2f2}
	
		.ttth1 {
		  background-color: #384452;
		  width : 10%;
		  border-color: black;
		  padding: 8px;
		  text-align: center;
		  color: white;
		}
		.ttth2 {
		  background-color: #384452;
		  width : 30%;
		  border-color: black;
		  padding: 8px;
		  text-align: center;
		  color: white;
		}
		.ttth3 {
		  background-color: #384452;
		  width : 60%;
		  border-color: black;
		  padding: 8px;
		  text-align: center;
		  color: white;
		}
		.tttr{
			height: 120px;
		}
		.tttr:hover{
		  background-color: highlight;
		  cursor: pointer;
		}
		.a{
			width: 100%;
			display: inline-block;
		}
		.b{
			width: 100%;
			display: inline-block;
		}
		.c{
			width: 50%;
			float: left;
		}
		p{
		height: 10px;
		}
		
		
		.ta_center{text-align: center;}
		.pagination{position: relative; box-sizing:border-box;}
		.pagination a{width: 28px; height: 28px; line-height: 28px; vertical-align: middle; display: inline-block; text-align: center;}
		.pagination a.prev_all{ background: url("http://unibell.jnkworks.com//img/common/paging_arr01.png") no-repeat center center;}
		.pagination a.prev{ background: url("http://unibell.jnkworks.com//img/common/paging_arr02.png") no-repeat center center;}
		.pagination a.next{ background: url("http://unibell.jnkworks.com//img/common/paging_arr03.png") no-repeat center center;}
		.pagination a.next_all{ background: url("http://unibell.jnkworks.com//img/common/paging_arr04.png") no-repeat center center;}
		.pagination span{ position: relative; display: inline-block; width: 28px; line-height: 28px; font-size: 13px; cursor: pointer;}
		.pagination span.active{ color: #006d14; font-size: 13px; font-weight: bold;}
		.pagination span.active:after{position: absolute; left:0; right:0; bottom: 0; top: 0;border: 1px solid #006d14; content: ""; display: block;}
		.pagination span:hover{ color: #006d14; font-size: 13px; font-weight: bold;transition : .2s ease-in-out;}
		.pagination span:hover:after{position: absolute; left:0; right:0; bottom: 0; top: 0;border: 1px solid #006d14; content: ""; display: block;}
 
  </style>
</head>

<script type="text/javascript">
	window.onload=function(){
		document.getElementById("tss").click();
		
		teamGender = "${teamGender}"
		teamAge = "${teamAge}"
		teamLocation = "${teamLocation}"
		teamName = "${teamName}"

		if(teamGender==""){
			teamGender="3";
		}else{
			form.teamGender.value = "<%=request.getParameter("teamGender")%>";
		}
		if(teamAge==""){
			teamAge="100";
		}else{
			form.teamAge.value = "<%=request.getParameter("teamAge")%>";
		}
		if(teamLocation==""){
			teamLocation="��������";
		}else{
			form.teamLocation.value = "<%=request.getParameter("teamLocation")%>";
		}
		if(teamName==""){
			teamName="������ �Է����ּ���";
		}else{
			form.teamName.value = "<%=request.getParameter("teamName")%>";
		}
	}
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input:text[name=teamName]").attr("disabled",true);
		$("select[name=teamGender]").prop("disabled",false);
		$("select[name=teamAge]").prop("disabled",false);
		$("select[name=teamLocation]").prop("disabled",false);
		$("input:radio[name=radio]").click(function() {
			if($("input[name=radio]:checked").val() == "1"){
				$("input:text[name=teamName]").attr("disabled",true);
				$("select[name=teamGender]").prop("disabled",false);
				$("select[name=teamAge]").prop("disabled",false);
				$("select[name=teamLocation]").prop("disabled",false);
			}else if ($("input[name=radio]:checked").val() == "0"){
				$("input:text[name=teamName]").attr("disabled",false);
				$("select[name=teamGender]").prop("disabled",true);
				$("select[name=teamAge]").prop("disabled",true);
				$("select[name=teamLocation]").prop("disabled",true);
			}
		})
	})
</script>
<body>
<% ArrayList<TeamDTO> list = (ArrayList<TeamDTO>)request.getAttribute("teamlist");%>

  <div class="container mtb">
    	<div id="tsearchtotal">
		<div id="tsearchbuttonall">
		<div style="float: left; width: 20%;">
			<input type="radio" name="radio" value="1" id="tss" style="margin-left: 10%; margin-top: 10px;">
			<label for="tss">�����׸����� �˻�</label><br/>
			<input type="radio" name="radio" value="0" id="tns" style="margin-left: 10%">
			<label for="tns">�������� �˻�</label>
		</div>
		<div style="float: left; width:80%; text-align: center;">
			<form action="/LPG/team/detailsearch.do" name="form">
				<div class="form-group" style="width: 100px; float: left;">
	              <label>�Ҽ� ����</label>
		              <select class="form-control" name="teamGender" id="teamGender">
		              			<option value="3" selected="selected">����</option>
					            <option value="0">����</option>
								<option value="1">ȥ��</option>
								<option value="2">����</option>
					  </select>
	            </div>
				<div class="form-group" style="width: 120px; float: left; margin-left: 40px; margin-right: 40px;">
	              <label>���� ����</label>
		              <select class="form-control" name="teamAge" id="teamAge">
		              				<option value="100" selected="selected">����</option>
					              	<option value="0">���� ����</option>
									<option value="10">10��</option>
									<option value="20">20��</option>
									<option value="30">30��</option>
									<option value="40">40��</option>
									<option value="50">50���̻�</option>
					              </select>
	            </div>
				<div class="form-group" style="width: 120px; float: left;">
	            	<label>�� ����</label>
		            	<select class="form-control" name="teamLocation" id="teamLocation">
		            				<option value="��������" selected="selected">����</option>
									<option value="������">������</option>
									<option value="������">������</option>
									<option value="������">������</option>
									<option value="���ϱ�">���ϱ�</option>
									<option value="�߱�">�߱�</option>
									<option value="����">����</option>
									<option value="��õ��">��õ��</option>
									<option value="��ģ��">��ģ��</option>
									<option value="���빮��">���빮��</option>
									<option value="�߶���">�߶���</option>
									<option value="���ϱ�">���ϱ�</option>
									<option value="���Ǳ�">���Ǳ�</option>
									<option value="���α�">���α�</option>
									<option value="��������">��������</option>
									<option value="������">������</option>
									<option value="���α�">���α�</option>
									<option value="������">������</option>
									<option value="��걸">��걸</option>
									<option value="���۱�">���۱�</option>
									<option value="���ʱ�">���ʱ�</option>
									<option value="���ı�">���ı�</option>
									<option value="�����">�����</option>
									<option value="������">������</option>
									<option value="��õ��">��õ��</option>
									<option value="���빮��">���빮��</option>
								</select>
	            </div>
				<div class="tsearchbutton">
					<input type="text" name="teamName" class="form-control" id="teamName" placeholder="������ �Է����ּ���" style="float: left; width: 200px">
					<input type="submit" name="tsb" id="tsb" value="�˻�" style="margin-left: 5px; width: 60px; height: 33px;">
				</div>
			</form>
			</div>
		</div>
		<div class="footer">
		<table id="tttable">
			<tr>
				<th class="ttth1">��ȣ</th>
		   		<th class="ttth2">����</th>
		    	<th class="ttth3">�� ����</th>
			</tr>
			
			
			<%
			String teamage = "";
			String teamgender = "";
			for(int i=0;i<list.size();i++){
				TeamDTO row = list.get(i);
				
				if(row.getTeamAge().equals("0")){
					teamage = "���Ѿ���";
				}else if(row.getTeamAge().equals("10")){
					teamage = "10��";
				}else if(row.getTeamAge().equals("20")){
					teamage = "20��";
				}else if(row.getTeamAge().equals("30")){
					teamage = "30��";
				}else if(row.getTeamAge().equals("40")){
					teamage = "40��";
				}else if(row.getTeamAge().equals("50")){
					teamage = "50���̻�"; 	
				}
				
				if(row.getTeamGender().equals("0")){
					teamgender = "����";
				}else if(row.getTeamGender().equals("1")){
					teamgender = "ȥ��";
				}else if(row.getTeamGender().equals("2")){
					teamgender = "����";
				}
			%>
			<tr class="tttr" onclick="location.href='/LPG/team/myteam.do?teamNo=<%= row.getTeamNo()%>'">
				<td class="tttd"><%= row.getTeamNo() %></td>
		    	<td class="tttd"><%= row.getTeamName() %></td>
		    	<td class="tttd">
		    		
		    		<div class="a">
		    			<div class="b">
		    				<div class="c">
		    					<p>���� : <%= row.getTeamLocation() %></p>
		    				</div>
		    				<div class="c">
		    					<p>�� �Ƿ� : <%= row.getTeamAbility() %></p>
		    				</div>
		    			</div>
		    			<div class="b">
		    				<div class="c">
		    					<p>�������� : <%= teamage %></p>
		    				</div>
		    				<div class="c">
		    					<p>���� : <%= teamgender %></p>
		    				</div>
		    			</div>
		    			<div class="b">
		    				<div class="c">
		    					<p>�Ƿ� : <%= row.getTeamAbility() %></p>
		    				</div>
		    				<div class="c">
		    					<p>������� : <%= row.getTeamPre() %></p>
		    				</div>
		    			</div>
		    		</div>
		    		
		    	</td>
			</tr>
			<% } %>
		</table>
	</div>
	</div>
  </div>

</body>
</html>
