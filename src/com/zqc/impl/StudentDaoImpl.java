package com.zqc.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.zqc.entity.Students;
import com.zqc.util.Basedao;


public class StudentDaoImpl {
	 
	public void deleteStudent(){
		Connection connection=Basedao.getConnection();
		String sql="TRUNCATE TABLE  student";
		PreparedStatement prst=null;
		try {
			 prst=connection.prepareStatement(sql);
			prst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			try {
				prst.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		
		
	}
	
		public int insertStudent(Students stu){
			int flag=0;
		
			Connection connection=Basedao.getConnection();
			PreparedStatement prst1=null;
			PreparedStatement prst2=null;
			PreparedStatement prst3=null;
			ResultSet rs=null;
			String sql1="select orderNumber from student where name=? and qq=? and telphone=? ";
			String sql2="insert into student values(?,?,?,?,?,?,?,?,?,?)";
			String sql3="update student set department=? ,sex=?,college=?,classes=? ,datetime=? Where telphone=?";
			try {
				prst1=connection.prepareStatement(sql1);
				prst2=connection.prepareStatement(sql2);
				prst1.setString(1, stu.getName());
				prst1.setString(2, stu.getQq());
				prst1.setString(3, stu.getTelphone());
				rs=prst1.executeQuery();
				
				
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				if(rs.next()){
					
					stu.setOrderNumber(rs.getString("orderNumber"));
					
					prst3=connection.prepareStatement(sql3);
					prst3.setString(1, stu.getDepartment());
					prst3.setString(2, stu.getSex());
					prst3.setString(3, stu.getCollege());
					prst3.setString(4, stu.getClasses());
					prst3.setString(5, stu.getDatetime());
					prst3.setString(6, stu.getTelphone());
					flag=prst3.executeUpdate();
				}else{
				
				prst2.setString(1, stu.getOrderNumber());
				prst2.setString(2, stu.getName());
				prst2.setString(3, stu.getSex());
				prst2.setString(4, stu.getCollege());
				prst2.setString(5, stu.getClasses());
				prst2.setString(6, stu.getDepartment());
				prst2.setString(7, stu.getQq());
				prst2.setString(8, stu.getTelphone());
				prst2.setString(9, stu.getDatetime());
				prst2.setString(10, stu.getStatus1());
				flag=prst2.executeUpdate();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				rs.close();
				prst2.close();
				prst1.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				return flag;
			}
		public int reviseStudent(String orderNumber){
			Connection connection=Basedao.getConnection();
			String sql="update student set status1='已报名' where orderNumber=?";
			PreparedStatement prst=null;
			try {
				 prst=connection.prepareStatement(sql);
				prst.setString(1, orderNumber);
				prst.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				try {
					prst.close();
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				
			}
			
			return 0;
		}
		public Students QueryStudentByOrderNumber(String orderNumber){
			Students student=new Students();
			Connection connection=Basedao.getConnection();
			String sql="select * from student where  ordernumber=?";
			PreparedStatement prst=null;
			ResultSet rs=null;
			try {
				prst = connection.prepareStatement(sql);
				prst.setString(1, orderNumber);
				rs=prst.executeQuery();
				if(rs.next()){
					student.setName(rs.getString("name"));
					student.setSex(rs.getString("sex"));
					student.setCollege(rs.getString("college"));
					student.setDepartment(rs.getString("department"));
					student.setStatus1(rs.getString("status1"));
					student.setQq(rs.getString("qq"));
					student.setTelphone(rs.getString("telphone"));
					student.setClasses(rs.getString("classes"));
					student.setDatetime(rs.getString("datetime"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			try {
				rs.close();
				prst.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
			return student;
		}
		
		public Students QueryStudentByTelphone(String telphone){
			Students student=new Students();
			Connection connection=Basedao.getConnection();
			String sql="select * from student where  telphone=?";
			PreparedStatement prst=null;
			ResultSet rs=null;
			try {
				prst = connection.prepareStatement(sql);
				prst.setString(1, telphone);
				rs=prst.executeQuery();
				if(rs.next()){
					student.setName(rs.getString("name"));
					student.setSex(rs.getString("sex"));
					student.setCollege(rs.getString("college"));
					student.setDepartment(rs.getString("department"));
					student.setStatus1(rs.getString("status1"));
					student.setQq(rs.getString("qq"));
					student.setTelphone(rs.getString("telphone"));
					student.setClasses(rs.getString("classes"));
					student.setDatetime(rs.getString("datetime"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			try {
				rs.close();
				prst.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
			return student;
		}
		public List<Students> QueryByName(String name){
			
			Connection connection=Basedao.getConnection();
			String sql="select * from student where  name=?";
			PreparedStatement prst=null;
			ResultSet rs=null;
			List<Students> list=new ArrayList<Students>();
			try {
				prst = connection.prepareStatement(sql);
				prst.setString(1, name);
				rs=prst.executeQuery();
				while(rs.next()){
					Students student=new Students();
					student.setOrderNumber(rs.getString("ordernumber"));
					student.setName(rs.getString("name"));
					student.setSex(rs.getString("sex"));
					student.setCollege(rs.getString("college"));
					student.setDepartment(rs.getString("department"));
					student.setStatus1(rs.getString("status1"));
					student.setQq(rs.getString("qq"));
					student.setTelphone(rs.getString("telphone"));
					student.setClasses(rs.getString("classes"));
					student.setDatetime(rs.getString("datetime"));
					list.add(student);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			try {
				rs.close();
				prst.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
			return list;
		}
	public List<Students> QueryByDepartment(String department){
			
			Connection connection=Basedao.getConnection();
			String sql="select * from student where  department=?";
			PreparedStatement prst=null;
			ResultSet rs=null;
			List<Students> list=new ArrayList<Students>();
			try {
				prst = connection.prepareStatement(sql);
				prst.setString(1, department);
				rs=prst.executeQuery();
				while(rs.next()){
					Students student=new Students();
					student.setOrderNumber(rs.getString("ordernumber"));
					student.setName(rs.getString("name"));
					student.setSex(rs.getString("sex"));
					student.setCollege(rs.getString("college"));
					student.setDepartment(rs.getString("department"));
					student.setStatus1(rs.getString("status1"));
					student.setQq(rs.getString("qq"));
					student.setTelphone(rs.getString("telphone"));
					student.setClasses(rs.getString("classes"));
					student.setDatetime(rs.getString("datetime"));
					list.add(student);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			try {
				rs.close();
				prst.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
			return list;
		}
		public List<Students> QueryStudent(){
		
			Connection connection=Basedao.getConnection();
			String sql="select * from student order by department,status1,datetime";
			PreparedStatement prst=null;
			ResultSet rs=null;
			List<Students> list =new ArrayList<Students>();
			try {
				prst = connection.prepareStatement(sql);
				rs=prst.executeQuery();
				while(rs.next()){
					Students student=new Students();
					student.setName(rs.getString("name"));
					student.setSex(rs.getString("sex"));
					student.setCollege(rs.getString("college"));
					student.setDepartment(rs.getString("department"));
					student.setStatus1(rs.getString("status1"));
					student.setQq(rs.getString("qq"));
					student.setTelphone(rs.getString("telphone"));
					student.setClasses(rs.getString("classes"));
					student.setDatetime(rs.getString("datetime"));
					list.add(student);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			try {
				rs.close();
				prst.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
			return list;
		}
		
		
}