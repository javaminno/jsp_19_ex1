<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	Connection connection;
	Statement stmt;
	ResultSet resultSet;
	
	String name, id, pw, phone1, phone2, phone3, gender;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>modify.jsp</title>
</head>
<body>
	<%
		id = (String)session.getAttribute("id");
		
		String query = "select * from members where id = '" + id + "' "; //where = id = '"abcde"'
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
		stmt = connection.createStatement();
		resultSet = stmt.executeQuery(query);
		
		while(resultSet.next()) {
			
			name = resultSet.getString("name");
			id = resultSet.getString("id");
			pw = resultSet.getString("pw");
			phone1 = request.getParameter("phone1");
			phone2 = request.getParameter("phone2");
			phone3 = request.getParameter("phone3");
			gender = request.getParameter("gender");
		}
	%>
	
	<form action="ModifyOk" method="post">
		�̸�: <input type="text" name="name" size="10" value=<%= name %>><br/>
		���̵�: <%= id %><br/>
		��й�ȣ: <input type="password" name="pw" size="10"><br/>
		��ȭ��ȣ : <select name="phone1">
		<option value="010">010</option>
		<option value="011">011</option>
		<option value="016">016</option>	
		<option value="017">017</option>
		<option value="018">018</option>
		<option value="019">019</option>
		</select> -
		<input type="text" name="phone2" size="5" value=<%= phone2 %>> - <input type="text" name="phone3" size=5 value=<%= phone3 %>> <br/>
		
		<%if(gender.equals("man")){ %>
		���� : <input type="radio" name="gender" value="man" cheked="cheked">�� <input type="radio" name="gender" value="woman">��<br/>
		<%}else  {%>
		���� : <input type="radio" name="gender" value="man">�� <input type="radio" name="gender" value="woman" cheked="cheked">��<br/>
		<% } %>
		<br/>
		<input type="submit" value="��������"> <input type="reset" value="���">
	</form>
</body>
</html>