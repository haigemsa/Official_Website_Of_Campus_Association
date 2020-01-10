package com.zqc.impl;

import java.sql.*;

import com.zqc.entity.User;
import com.zqc.util.Basedao;
public class UserValidate {
	Connection conn =null;
	PreparedStatement prestmt =null;
	ResultSet rs = null;
	int flag=0;
	public int Useryz(User user) {
		conn=Basedao.getConnection();
		try {
			prestmt=conn.prepareStatement("select * from adminT where user_name=?");
			prestmt.setString(1,user.getUser_Name());
			rs=prestmt.executeQuery();
		if(rs.next()){
			if(rs.getString(2).trim().equals(user.getUser_Password()))
				flag=1;
			else 
				user.setMass("密码输入有误，情重新输入！");
		}
		else{
			user.setMass("用户名不存在，情重新输入！");
		}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;	
	}
}
