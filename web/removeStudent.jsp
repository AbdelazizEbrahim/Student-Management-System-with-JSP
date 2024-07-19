<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
    String rollNo = request.getParameter("rollNo");

    if (rollNo == null || rollNo.trim().isEmpty()) {
        response.sendRedirect("errorRemovingStudent.jsp");
        return;
    }

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        con = ConnectionProvider.getCon();
        st = con.createStatement();

        // Check if the student exists in the student table
        rs = st.executeQuery("SELECT COUNT(*) FROM student WHERE rollNo = '" + rollNo + "'");
        if (rs.next() && rs.getInt(1) > 0) {
            rs.close(); // Close ResultSet before reusing Statement

            // Delete from the result table
            st.executeUpdate("DELETE FROM result WHERE rollNo = '" + rollNo + "'");

            // Delete from the student table
            st.executeUpdate("DELETE FROM student WHERE rollNo = '" + rollNo + "'");

            response.sendRedirect("adminHome.jsp");
        } else {
            response.sendRedirect("errorRemovingStudent.jsp");
        }
    } catch (Exception ex) {
        ex.printStackTrace(); // Print the stack trace to the server logs
        response.sendRedirect("errorRemovingStudent.html");
    } finally {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
