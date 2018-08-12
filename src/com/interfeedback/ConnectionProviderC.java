package com.interfeedback;
import java.sql.*;

public class ConnectionProviderC implements ProviderC {

	static Connection con = null;
	public static Connection getCon() {
		try {
			Class.forName("org.postgresql.Driver");
			con = DriverManager.getConnection(connURL, username, pwd);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return con;
	}
}

