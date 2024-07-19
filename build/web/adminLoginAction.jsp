<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");



Connection con = null;
PreparedStatement pstUpdate = null;

try {
    con = ConnectionProvider.getCon();
    con.setAutoCommit(false); 

    // Check if the password already exists
    String checkQuery = "SELECT * FROM admin WHERE username = ? AND password = ? ";
    PreparedStatement pstCheck = con.prepareStatement(checkQuery);
    pstCheck.setString(1, username);
    pstCheck.setString(2, password);

    ResultSet rs = pstCheck.executeQuery();
    

    if (rs.next()) {
     // Redirect to admin home page if login is successful
     response.sendRedirect("adminHome.jsp");
    
    } else {
        // Roll Admin does not exist, handle accordingly (maybe insert new record)
        response.sendRedirect("errorAdminLogin.jsp");
    }
    
    rs.close();
    pstCheck.close();
} catch (SQLException ex){
    if (con != null) {
        try {
            con.rollback(); // Rollback transaction on error
        } catch (SQLException rollbackEx) {
            rollbackEx.printStackTrace();
        }
    }
    ex.printStackTrace(); // Log or handle exception appropriately
    response.sendRedirect("errorAdminLogin.jsp");
} finally {
    // Close resources in finally block
    try {
        if (pstUpdate != null) pstUpdate.close();
        if (con != null) con.close();
    } catch (SQLException closeEx) {
        closeEx.printStackTrace();
    }
  }


%>

