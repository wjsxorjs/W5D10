<%@page import="mybatis.vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp.jsp</title>
<style>
	#table{
		width: 600px;
		border-collapse: collapse;
	}
	
	#table th, #table td{
		border: 1px solid #ccc;
		padding: 4px;
	}
	
	#table caption{
		text-indent: -9999px;
	}
</style>
</head>
<body>
	<div id="wrap">
		<header>
				<h1>사원 목록</h1>
		</header>
		<article>
			<input type="text" id="search"/>
			<button onclick="exe()" type="button">검색</button>
			<table id="table">
				<caption>사원 목록 테이블</caption>
				<thead>
					<tr>
						<th>사번</th>
						<th>이름</th>
						<th>직종</th>
						<th>부서코드</th>
					</tr>
				</thead>
				<tbody>
				<%
					Object obj = request.getAttribute("emp");
					if(obj != null){
						EmpVO[] e_ar = (EmpVO[]) obj;
				
						for(EmpVO evo: e_ar){
				%>
						<tr>
							<td><%=evo.getEmpno() %> </td>
							<td><%=evo.getEname() %> </td>
							<td><%=evo.getJob() %>	 </td>
							<td><%=evo.getDeptno() %></td>
						</tr>
				<%
						}
					}
				%>
				</tbody>
			</table>
		</article>
	</div>
	<hr/>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script>
		function exe(){
			$.ajax({
				url: "/Ex20240603_MVC/src/main/java/test/action/EmpAction",
				type: "POST",
				data: $("#search").val(),
			}).done(function(res){
				alert();
				
			});
		}
	</script>
</body>
</html>