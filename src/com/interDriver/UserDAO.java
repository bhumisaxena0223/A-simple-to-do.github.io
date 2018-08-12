package com.interDriver;
import java.sql.*;
public class UserDAO {

	static Connection conn;
	static PreparedStatement pst;
	public static int insertUser(userBean u)
	{
		int status=0;
		try {
			conn = ConnectionProvider.getCon();
			pst = conn.prepareStatement("insert into userdata values (?,?,?)");
			pst.setString(1,u.getUserid());
			pst.setString(2,u.getUsername());
			pst.setString(3,u.getPassword());
			status=pst.executeUpdate();
			conn.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return status;
	}
}
