          package app.liquid.dbx;

import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ...
 */
public class connection {    
   
    static String driver = "mariadb"; // "mysql", "mariadb", "oracle", "sqlserver"
    static String host = "localhost";
    static String database = "ricettario";
    static String user = "root";
    static String password = "root";
    static Class driverClass = null;
    
    //
    // Connection with default database
    //
    static public Connection getDBConnection() throws Throwable {        
        if("oracle".equalsIgnoreCase(driver)) {
            if(driverClass == null) driverClass = Class.forName("oracle.jdbc.driver.OracleDriver");
            return DriverManager.getConnection("jdbc:oracle:thin:@"+host+":1521:xe",user,password);
        } else if("postgres".equalsIgnoreCase(driver)) {
            if(driverClass == null) driverClass = Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection("jdbc:postgresql://"+host+":5432/"+database,user,password);
        } else if("mysql".equalsIgnoreCase(driver)) {
            if(driverClass == null) driverClass = Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://"+host+":3306/"+database,user,password);
        } else if("mariadb".equalsIgnoreCase(driver)) {
            if(driverClass == null) driverClass = Class.forName("org.mariadb.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mariadb://"+host+":3307/"+database+"?useSSL=false", user, password);
        } else if("sqlserver".equalsIgnoreCase(driver)) {
            if(driverClass == null) driverClass = Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection("jdbc:sqlserver://"+host+":1433;databaseName="+database,user,password);
        } else {
            Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, "drive not recognized");
        }            
        return null;    
    }

    //
    // Connection to defined database
    //
    static public Connection getDBConnection(String database) throws Throwable {
        if(database != null && !database.isEmpty()) {
            if("oracle".equalsIgnoreCase(driver)) {
                if(driverClass == null) driverClass = Class.forName("oracle.jdbc.driver.OracleDriver");
                return DriverManager.getConnection("jdbc:oracle:thin:@"+host+":1521:xe",user,password);
            } else if("postgres".equalsIgnoreCase(driver)) {
                if(driverClass == null) driverClass = Class.forName("org.postgresql.Driver");
                return DriverManager.getConnection("jdbc:postgresql://"+host+":5432/"+database,user,password);
            } else if("mysql".equalsIgnoreCase(driver)) {
                if(driverClass == null) driverClass = Class.forName("com.mysql.jdbc.Driver");
                return DriverManager.getConnection("jdbc:mysql://"+host+":3306/"+database,user,password);
            } else if("mariadb".equalsIgnoreCase(driver)) {
                if(driverClass == null) Class.forName("org.mariadb.jdbc.Driver");
                return DriverManager.getConnection("jdbc:mariadb://"+host+":3307/"+database+"?useSSL=false", user, password);
            } else if("sqlserver".equalsIgnoreCase(driver)) {
                if(driverClass == null) driverClass = Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                return DriverManager.getConnection("jdbc:sqlserver://"+host+":1433;databaseName="+database,user,password);
            } else {
                Logger.getLogger(Connection.class.getName()).log(Level.SEVERE, "drive not recognized");
            }
        } else {
            return getDBConnection();
        }
        return null;    
    }
    
    static public String getConnectionDesc() {
        return "[ *** LiquidX : "+driver+" @"+host+" database:"+database+" user:"+user+ " *** ]";
    }       
}