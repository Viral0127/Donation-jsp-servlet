package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.FeedbackModel;
import com.model.User;
import com.model.User2;

public class UserDao {
	
	public static Connection getconnect()
	{
		Connection con=null;
		
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prodata","root","");

		}
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return con;
		
	}
	
	public static int adddata(User u)
	{
		
		Connection con=UserDao.getconnect();
		
		int status=0;
		
		try {
			PreparedStatement ps=con.prepareStatement("insert into infodata(username,email,password,address,mobile) values(?,?,?,?,?)");
			
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getAddress());
			ps.setString(5, u.getMobile());
			
			
			
			status=ps.executeUpdate();
		} 
		
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
		
	}
	
public User checklogin(User r) {
		
		boolean flag=false;
		User obj=null;
		try 
		{
			
			
				Connection conn=UserDao.getconnect();
				String sql="select * from infodata where email=? and password=?";
				
				PreparedStatement pst=conn.prepareStatement(sql);
				pst.setString(1, r.getEmail());
				pst.setString(2, r.getPassword());
				
				ResultSet rs=pst.executeQuery();
				
				if(rs.next())
				{
					obj=new User();
					
					obj.setUsername(rs.getString("username"));
					obj.setEmail(rs.getString("email"));
					obj.setPassword(rs.getString("password"));
					obj.setAddress(rs.getString("address"));
					obj.setMobile(rs.getString("mobile"));
					
					
				}
			
		
			
		} 
		catch (Exception e) 
		{
			
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		return obj;
	
		
	}
		
	
	public static int donationregister(User2 u)
	{
		
		
		int status=0;
		
		
		Connection con=UserDao.getconnect();
		
		try 
		{
			PreparedStatement ps=con.prepareStatement("insert into registerinfo (name,email,items,titems,date) values(?,?,?,?,?)");
				ps.setString(1,u.getName());
				ps.setString(2,u.getEmail());
				ps.setString(3,u.getItems());
				ps.setString(4,u.getTitems());
				ps.setString(5,u.getDate());
		
					
				
				status=ps.executeUpdate();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return status;
		
	}
	
	
	public static List<User2>getalldata()
	{
		
		List<User2>list=new ArrayList<User2>();
		
		Connection con=UserDao.getconnect();
		try 
		{
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("select *from registerinfo");
		
			ResultSet set=ps.executeQuery();
			
			while(set.next())
			{
				
				User2 u =new User2();
				u.setId(set.getInt("id"));
				u.setName(set.getString("name"));
				u.setEmail(set.getString("email"));
				u.setItems(set.getString("items"));
				u.setTitems(set.getString("titems"));
				u.setDate(set.getString("date"));
				
				list.add(u);
			}
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
		
	}
	
	public static int feedback(FeedbackModel u) {
		
		
		int status=0;
		
		Connection con=UserDao.getconnect();
		try {
			PreparedStatement ps=con.prepareStatement("insert into feedbackinfo(name,email,feedback) values(?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getFeedback());
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
		
		
	}

}
