<%@page import="mybatis.vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp.jsp</title>
</head>
<body>
	<div id="wrap">
		<header>
				<h1>사원 목록</h1>
		</header>
		<article>
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
							<tr><%=evo.getEmpno() %> </tr>
							<tr><%=evo.getEname() %> </tr>
							<tr><%=evo.getJob() %>	 </tr>
							<tr><%=evo.getDeptno() %></tr>
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
</body>
</html>