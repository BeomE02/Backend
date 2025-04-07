<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>사용자 목록</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
  <div class="container mt-4">
    <h2 class="text-center">사용자 목록</h2>
    <table class="table table-hover">
      <tr><th>ID</th><th>이름</th><th>비밀번호</th></tr>
<%
Class.forName("org.mariadb.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/backend", "jbha", "1111");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM member");

while(rs.next()){
%>
<tr>
  <td><a href="updateForm.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("id")%></a></td>
  <td><%=rs.getString("name")%></td>
  <td><%=rs.getString("pwd")%></td>
</tr>
<%
}
rs.close(); st.close(); con.close();
%>
    </table>
    <div class="text-center">
      <a href="index.jsp" class="btn btn-secondary">홈으로</a>
    </div>
  </div>
</body>
</html>
