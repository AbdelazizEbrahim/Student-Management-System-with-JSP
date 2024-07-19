package Project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/project";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    // Private constructor to prevent instantiation of this utility class
    private ConnectionProvider() {
        // Private constructor to prevent instantiation
    }

    public static Connection getCon() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Error in ConnectionProvider.getCon(): " + ex.getMessage());
            throw new SQLException("Error in ConnectionProvider.getCon(): " + ex.getMessage());
        }
    }
}
