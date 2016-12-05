<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("user") == null) {
		request.setAttribute("err", "您还未登录，请登录");
		request.getRequestDispatcher("../jsp/login.jsp").forward(request,
				response);
	}
%>

