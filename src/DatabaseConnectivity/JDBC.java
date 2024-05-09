package DatabaseConnectivity;

import java.sql.*;

public class JDBC {
    public static void main(String[] args) throws Exception {

        String url="jdbc:mysql://localhost:3306/company";
        String username="root";
        String password="balajikalai";
        try (Connection con = DriverManager.getConnection(url, username, password);
             Statement statement = con.createStatement()) {

            // Create a new table
         //   String createTableSQL = "CREATE TABLE Employee2 (empcode int, empname VARCHAR(50), empage int, esalary int)";
         //   statement.executeUpdate(createTableSQL);
            System.out.println("Table created successfully.");

            // Insert values into the new table
         //   String insertSQL = "INSERT INTO Employee2(empcode,empname,empage,esalary) values(101,'jenny',25,10000),(102,'jacky',30,2000)," +
         //           "(103,'joe',20,4000),(104,'johhn',40,8000),(105,'Shameer',25,9000)";
         //   statement.executeUpdate(insertSQL);
            System.out.println("Values inserted successfully.");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}