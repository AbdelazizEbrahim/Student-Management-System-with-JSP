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

Connection con = null;
PreparedStatement pstUpdate = null;

try {
    con = ConnectionProvider.getCon();
    con.setAutoCommit(false); // Start transaction

    // Check if the rollNo already exists
    String checkQuery = "SELECT COUNT(*) FROM result WHERE rollNo=?";
    PreparedStatement pstCheck = con.prepareStatement(checkQuery);
    pstCheck.setString(1, rollNo);
    ResultSet rs = pstCheck.executeQuery();
    
    if (rs.next() && rs.getInt(1) > 0) {
        // Roll number exists, proceed with the update
        String updateQuery = "UPDATE result SET physics=?, chemistry=?, maths=?, biology=?, english=?, sport=?, art=? WHERE rollNo=?";
        pstUpdate = con.prepareStatement(updateQuery);
        pstUpdate.setString(1, physics);
        pstUpdate.setString(2, chemistry);
        pstUpdate.setString(3, maths);
        pstUpdate.setString(4, biology);
        pstUpdate.setString(5, english);
        pstUpdate.setString(6, sport);
        pstUpdate.setString(7, art);
        pstUpdate.setString(8, rollNo);

        pstUpdate.executeUpdate();
        
        con.commit(); // Commit transaction
        response.sendRedirect("adminHome.jsp");
    } else {
        // Roll number does not exist, handle accordingly (maybe insert new record)
        response.sendRedirect("errorUpdatingStudent.jsp");
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
    response.sendRedirect("errorUpdatingStudent.jsp");
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
