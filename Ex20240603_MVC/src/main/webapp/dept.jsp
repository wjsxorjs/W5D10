<%@page import="mybatis.vo.DeptVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dept.jsp</title>
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
				<h1>부서 목록</h1>
		</header>
		<article>
			<table id="table">
				<caption>부서 목록 테이블</caption>
				<thead>
					<tr>
						<th>부서코드</th>
						<th>부서명</th>
						<th>지역코드</th>
					</tr>
				</thead>
				<tbody>
				<%
					Object obj = request.getAttribute("dept");
					if(obj != null){
						DeptVO[] d_ar = (DeptVO[]) obj;
				
						for(DeptVO dvo: d_ar){
				%>
						<tr>
							<td><%=dvo.getDeptno() %> </td>
							<td><%=dvo.getDname() %> </td>
							<td><%=dvo.getLoc_code() %>	 </td>
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