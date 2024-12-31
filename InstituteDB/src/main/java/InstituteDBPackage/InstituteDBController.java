package InstituteDBPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class InstituteDBController {
	
	//Connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
	//Insert Data Function
		public static boolean insertdata(String region,String customername,String lab,String section,String phone,String principal,String model,String serialno) {
			
			boolean isSuccess= false;
			
			try {
				//DB Connection Call
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//SQL Query
				String sql="insert into customerdb values(0,'"+region+"','"+customername+"','"+lab+"','"+section+"','"+phone+"','"+principal+"','"+model+"','"+serialno+"')";
				int rs= stmt.executeUpdate(sql);
				if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess=false;
				}
				}catch(Exception e) {
					e.printStackTrace();
				}
			return isSuccess;
			}
		
		public static List<InstituteDBModel> getByID (String Id){
			
			int convertedID = Integer.parseInt(Id);
			
			ArrayList <InstituteDBModel> instituteDB = new ArrayList<>();
			
			try {
				//DB Connection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "select*from customerdb where id '"+convertedID+"'";
						rs= stmt.executeQuery(sql);
						
				while(rs.next()) {
					int id = rs.getInt(1);
					String region = rs.getString(2);
					String customername = rs.getString(3);
					String lab = rs.getString(4);
					String section = rs.getString(5);
					String phone = rs.getString(6);
					String principal = rs.getString(7);
					String model = rs.getString(8);
					String serialno = rs.getString(9);
					
					InstituteDBModel idb = new InstituteDBModel(id,region,customername,lab,section,phone,principal,model,serialno);
					instituteDB.add(idb);
				}
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return instituteDB;
		}
		
		//GetAll Data
		public static List<InstituteDBModel> getAllInstituteDB (){
			
			ArrayList <InstituteDBModel> instituteDB = new ArrayList<>();
			
			try {
				//DB Connection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "select*from customerdb";
						rs= stmt.executeQuery(sql);
						
				while(rs.next()) {
					int id = rs.getInt(1);
					String region = rs.getString(2);
					String customername = rs.getString(3);
					String lab = rs.getString(4);
					String section = rs.getString(5);
					String phone = rs.getString(6);
					String principal = rs.getString(7);
					String model = rs.getString(8);
					String serialno = rs.getString(9);
					
					InstituteDBModel idb = new InstituteDBModel(id,region,customername,lab,section,phone,principal,model,serialno);
					instituteDB.add(idb);
				}
				
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return instituteDB;
		}
		
		//Update Data
		public static boolean updatedata(String id,String region,String customername,String lab,String section,String phone,String principal,String model,String serialno) {
			try {
				//DB Connection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				String sql = "update customerdb set region='"+region+"',customername='"+customername+"',lab='"+lab+"',section='"+section+"',phone='"+phone+"',principal='"+principal+"',model='"+model+"',serialno='"+serialno+"'"
						+"where id='"+id+"'";
				
					int rs= stmt.executeUpdate(sql);
					
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess=false;
					}
					
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
			
			
		}
		
		//Delete Data
		public static boolean deletedata(String id){
			int convID = Integer.parseInt(id);
			try {
				//DBConnection
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				String sql ="delete from customerdb where id ='"+convID+"'";
				
				int rs= stmt.executeUpdate(sql);
				
				if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess=false;
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}
}
		

