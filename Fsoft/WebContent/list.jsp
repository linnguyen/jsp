<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	DANH SACH CAC HOC PHAN DA DANG KI
	<%
	ArrayList<String> dsHocPhan=(ArrayList<String>)request.getAttribute("dsHocPhan");
	ArrayList<String> dsHocPhanID=(ArrayList<String>)request.getAttribute("dsHocPhanID");
%>
	<table>
		<tr>
			<th>Ten hoc phan</th>
			<th>Hanh dong</th>
		</tr>
		<%
			for(int i=0;i<dsHocPhan.size();i++) {
		%>
		<tr>
			<td><%=dsHocPhan.get(i)%></td>
			<td><a href="delete.jsp?hocPhanID=<%=dsHocPhanID.get(i)%>"></a></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>