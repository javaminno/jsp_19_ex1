<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginResult.jsp</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("name");
		String id = (String) session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
	%>
	
	<%= name %>�� �α��ο� �����ϼ̽��ϴ�.<br/>
	<%= name %>���� ID�� <%= id %>�Դϴ�.<br/>
	�����Ͻ� ȸ�������� �����Ͻ÷��� �Ʒ� [ȸ����������]�� Ŭ�����ּ���<br/>
	<a href="modify.jsp">ȸ����������</a>
	
</body>
</html>