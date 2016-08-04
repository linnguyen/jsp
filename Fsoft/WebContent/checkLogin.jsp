<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- ep trinh duyet hieu fien ban -->
<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");

	//truy cap database
	//
	if("huy".equals(userName)){
		//vao db lay danh sach hoc phan
		ArrayList<String> dsHocPhan=new ArrayList<>();
		dsHocPhan.add("Toan Cao Cap");
		dsHocPhan.add("Ly So Cap");
		dsHocPhan.add("Hoa Ha Cap");
		ArrayList<String> dsHocPhanID=new ArrayList<>();
		dsHocPhan.add("TCC");
		dsHocPhan.add("LSC");
		dsHocPhan.add("HHC");
		
		String nguoiBiAn="Minh Beo";
		session.setAttribute("nguoiBiAn",nguoiBiAn);
		
		//bien danh sach hoc phan thanh attribute (de chuyen cho trang jsp tiep theo)
		request.setAttribute("dsHocPhan",dsHocPhan);
		request.setAttribute("dsHocPhanID",dsHocPhanID);
		//list hoc phan
		//RequestDispatcher rd=request.getRequestDispatcher("list.jsp");
		//rd.forward(request,response);
		response.sendRedirect("list.jsp");
		
	}else{
		//RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
		//rd.forward(request,response);
	
	}
%>