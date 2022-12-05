<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.spring.board.BoardVO"%>
<%@ page import="com.spring.board.BoardDAO" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>게시판</title>
	<link rel="stylesheet" href ="style.css">
</head>
<body>

<%--<%--%>
<%--	BoardDAO boardDAO = new BoardDAO();--%>
<%--	String id=request.getParameter("id");	--%>
<%--	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));--%>
<%--%>--%>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>카테고리</td><td><form:input path="category"/></td></tr>
		<tr><td>제목</td><td><form:input path="title"/></td></tr>
		<tr><td>글쓴이</td><td><form:input path="writer"/></td></tr>
		<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
</table>
	<input type="submit" value="수정하기"/>
	<input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>