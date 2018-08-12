package com.interfeedback;
import java.sql.*;

import com.interfeedback.ConnectionProviderC;
import com.interfeedback.UserBeanFeed;

public class UserFeed implements ProviderC {
	static Connection conn;
	static PreparedStatement pst;
	public static int insertUserF(UserBeanFeed ub)
	{
		int status = 0;
		try {
			conn = ConnectionProviderC.getCon();
			pst = conn.prepareStatement("insert into feedback values (?,?);");
			pst.setString(1,ub.getUserid());
			pst.setString(2,ub.getAnswer());
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
