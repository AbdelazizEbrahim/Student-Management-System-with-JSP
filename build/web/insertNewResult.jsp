<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
String rollNo = request.getParameter("rollNo");
String physics = request.getParameter("phy");
String chemistry = request.getParameter("chem");
String maths = request.getParameter("math");
String biology = request.getParameter("bio");
String english = request.getParameter("eng");
String sport = request.getParameter("sport");
String art = request.getParameter("art");

try {
    Connection con = ConnectionProvider.getCon();
    
    // Check if the rollNo exists in the student table
    String checkQuery = "SELECT * FROM student WHERE rollNo=?";
    PreparedStatement pstCheck = con.prepareStatement(checkQuery);
    pstCheck.setString(1, rollNo);
    ResultSet rs = pstCheck.executeQuery();
    
    if (rs.next()) {
        // Roll number exists in student table, proceed with inserting into result table
        String insertQuery = "INSERT INTO result VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstInsert = con.prepareStatement(insertQuery);
        pstInsert.setString(1, rollNo);
        pstInsert.setString(2, physics);
        pstInsert.setString(3, chemistry);
        pstInsert.setString(4, maths);
        pstInsert.setString(5, biology);
        pstInsert.setString(6, english);
        pstInsert.setString(7, sport);
        pstInsert.setString(8, art);
        
        pstInsert.executeUpdate();
        
        pstInsert.close();
        pstCheck.close();
        con.close();
        
        response.sendRedirect("adminHome.jsp");
    } else {
        // Roll number does not exist in student table, redirect to error page
        response.sendRedirect("errorInsertingResult.jsp");
    }
    
    rs.close();
} catch (Exception ex){
    ex.printStackTrace(); // Log or handle exception appropriately
    response.sendRedirect("errorInsertingResult.jsp");
}
%>
