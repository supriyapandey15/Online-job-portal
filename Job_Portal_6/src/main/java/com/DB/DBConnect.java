package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBConnect {
	
		 private static Connection conn;
		private static String sql;
		 public static Connection getConn() {
		 
		 Connection conn=null;
		 Statement stmt=null;
		
			 try {
					// load the driver
					Class.forName("com.mysql.jdbc.Driver");
					
					// create the connection.....
					String user="root";
					String password="root";
					String url="jdbc:mysql://localhost:3306/job_portal_6";
					
					conn=DriverManager.getConnection(url, user, password);
					stmt.executeUpdate(sql);
					
				}catch (Exception e) {
					
				}
				return conn;
				
			}

		}
