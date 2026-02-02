package PRKSS.PROJ_Tour.modules;
import java.sql.*;

 public class DBmanager {
    private Connection con;
    private Statement st;
    private String db_url, userid, pass;

    public DBmanager() {
        try {
            db_url = "jdbc:mysql://localhost:3306/tour_db";
            userid = "root";
            pass = "";
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(db_url, userid, pass);
            st = null;
            if (con != null) {
                System.out.println("database connection established successfully");
            } else {
                System.out.println("unable to establish database connection");
            }

        } catch (Exception exe) {
            System.out.println("database connection failed error : " + exe.getMessage());
        }
    }

    public boolean executeMyInsertUpdateOrDelete(String CommandText) {
        boolean result;
        try {
            st = con.createStatement();
            int r = st.executeUpdate(CommandText);
            result = r > 0 ? true : false;
        } catch (Exception exe) {
            result = false;
            System.out.println("command not executed error : " + exe.getMessage());
        }
        return result;
    }

    public ResultSet executeMySelect(String CommandText) {
        ResultSet rs = null;
        try {
            st = con.createStatement();
            rs = st.executeQuery(CommandText);
        } catch (Exception ex) {
            System.out.println("Error in executing Select Command : " + ex.getMessage());
        }
        return rs;
    }

}

