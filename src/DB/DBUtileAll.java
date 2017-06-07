package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBUtileAll {
	public static void main(String[] args) {
		DBUtileAll DBall=new DBUtileAll();
		ArrayList<String[]> list = new ArrayList<String[]>();
		list=DBall.qurey();
		String[] temperature=list.get(0);			//得到list中list[0]及temperature[]数组；
		
		String[] fire=list.get(7);
		for(String i:temperature){				//遍历temperature[]数组
			System.out.println(i);
		}
		for(String i:fire){				//遍历temperature[]数组
			System.out.println(i);
		}
		
	}
	public Connection getConnection(){
			
			//设置连接的数据库‘用户名和密码
			 String url="jdbc:mysql://localhost:3306/wia-pa";
			 String username="root";
			 String password="123456";		
			try {
				Class.forName("com.mysql.jdbc.Driver");		//打开驱动	??	可否用此打开一个类
				return  DriverManager.getConnection(url, username, password);
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();	
				} catch (SQLException e) {
				e.printStackTrace();
			}	
			return null;
		}

	//向数据库表中添加内容*********************************************************************************
	public void update(String device,int id,String data) { // 更新表()中的哪一个传感器的值和当时间
		DBUtil util = new DBUtil();
		Connection conn = util.getConnection();

		String sql = "update wia_pa set " + device + "=" + data+" where id="+id+";";
		
		try {
			conn.setAutoCommit(false); // 自动提交关闭
			Statement stmt = conn.createStatement();

			stmt.executeUpdate(sql); // 执行SQL语句
			
			conn.commit(); // 提交
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback(); // 回滚到之间的状态
			} catch (SQLException e1) {

				e1.printStackTrace();
			} finally {
				util.closeConnection(conn);
			}
		}

	}
	//向数据库表中添加内容*********************************************************************************
	public void update(String device,String timer,int id,String data) { // 更新表()中的哪一个传感器的值和当时间
		DBUtil util = new DBUtil();
		Connection conn = util.getConnection();

		String sql = "update wia_pa set " + device + "=" + data+","+timer+"=now() where id="+id+";";
		
		try {
			conn.setAutoCommit(false); // 自动提交关闭
			Statement stmt = conn.createStatement();

			stmt.executeUpdate(sql); // 执行SQL语句
			
			conn.commit(); // 提交
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback(); // 回滚到之间的状态
			} catch (SQLException e1) {

				e1.printStackTrace();
			} finally {
				util.closeConnection(conn);
			}
		}

	}
	public String query(String device,int id){
		DBUtil util = new DBUtil();
		Connection conn = util.getConnection();
		ResultSet rs = null;
		String queryrs = null;
		//String queryrs2 = null;
		try {	
			String sql="select "+device+" from wia_pa where id ="+id+";";		
			//String sql="select*from StuTbl where id=4;"
			Statement stmt =conn.createStatement();
			rs=stmt.executeQuery(sql);		//将查找到的结果放入结果集中
			//rs.next();
			while(rs.next()){		//	查找指定设备那一列最新的值和日期
				 queryrs=rs.getString(device);
				 //queryrs2=rs.getString(timer);
				 //qd.setQuerydate(rs.getString(device));
				 //qd.setQuerytime(rs.getString(timer));
				}
			
			//System.err.println(qd.getQuerydate());
			//System.err.println(queryrs);
			rs.close();			
			conn.close();
			util.closeConnection(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return queryrs;
	}
	@SuppressWarnings("null")
	public ArrayList<String[]> qurey(){
		DBUtil util = new DBUtil();
		Connection conn = util.getConnection();
		ResultSet rs = null;
		ArrayList<String[]> list = new ArrayList<String[]>();

		try {	
			String sql="select*from wia_pa;";		
			Statement stmt =conn.createStatement();
			rs=stmt.executeQuery(sql);		//将查找到的结果放入结果集中	
			
			String temperature[] = new String[6];
			String humidity[] =new String[6];
			String smell[] =new String[6];
			String smog[] =new String[6];
			String infrared[] =new String[6];
			String magnetic[] =new String[6];
			String windowbreak[] =new String[6];
			String fire[] =new String[6];
			String founder[] =new String[6];
			int i=0;
			while(rs.next()){	
				/*******将查询到的值分别出入对应的数组  9类数据**********/
				temperature[i]=rs.getString("temperature");
				humidity[i]=rs.getString("humidity");
				smell[i]=rs.getString("smell");
				smog[i]=rs.getString("smog");
				infrared[i]=rs.getString("infrared");
				magnetic[i]=rs.getString("magnetic");
				windowbreak[i]=rs.getString("windowbreak");
				fire[i]=rs.getString("fire");
				founder[i]=rs.getString("founder");
				
				i++;
				}
			/*******将数组存入集合中**********/
			list.add(temperature);
			list.add(humidity);
			list.add(smell);
			list.add(smog);
			list.add(infrared);
			list.add(magnetic);
			list.add(windowbreak);
			list.add(fire);
			list.add(founder);
			rs.close();	
			conn.close();
			util.closeConnection(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
		
	}
}
