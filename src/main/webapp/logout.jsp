<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>logout.jsp</title>
</head>
<body>
	<%
		session.invalidate();
	%>
	<h1>�α׾ƿ� �Ǿ����ϴ�. �ȳ��� ���ʽÿ�.</h1>
	
	<a href = "login.html">�α���</a>
</body>
</html>