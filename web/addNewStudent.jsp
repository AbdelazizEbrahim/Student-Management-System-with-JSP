<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
    // Retrieve parameters from the request object
    String branch = request.getParameter("branch");
    String rollNo = request.getParameter("rollNo");
    String name = request.getParameter("name");
    String fatherName = request.getParameter("fatherName");
    String gender = request.getParameter("gender");

    try {
        // Get database connection
        Connection con = ConnectionProvider.getCon();
        String query = "INSERT INTO student (branch, rollNo, name, fatherName, gender) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);
        
        // Set parameters
        pstmt.setString(1, branch);
        pstmt.setString(2, rollNo);
        pstmt.setString(3, name);
        pstmt.setString(4, fatherName);
        pstmt.setString(5, gender);

        // Execute update
        int result = pstmt.executeUpdate();
        
        // Redirect based on result
        if(result > 0){
            response.sendRedirect("adminHome.jsp");
        } else {
            response.sendRedirect("errorAddNewStudent.jsp");
        }
        
    } catch (Exception ex) {
        ex.printStackTrace();
        response.sendRedirect("errorAddNewStudent.jsp");
    }
%>
