package dictionary;

	/**
	 * @param args
	 */
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.sql.*;

import com.mysql.jdbc.Driver;;
	public class DummyDB {
		private int totalCountries;
		private String data = "Afghanistan,	Albania, Zimbabwe";
		private List<String> countries;
		private Connection connection;
		private Statement statement=null;
		public DummyDB() throws SQLException, ClassNotFoundException {
			String url = "jdbc:mysql://"+"db.cwsx20uqt4ih.us-west-2.rds.amazonaws.com:3306/";
			String userName = "kaanand54";
			String password = "Kaanand54#";
			String dbName = "entries";
			//String driver = "com.mysql.jdbc.Driver";
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(url + dbName, userName, password);
			statement=connection.createStatement();
			//System.out.println("connected");
			
		}
		public List<String> getData(String query) {
			List<String> matched = new ArrayList<String>();
			try {
				ResultSet resultSet=statement.executeQuery("select * from entries where word='"+query+"'");
				while(resultSet.next())
				{   
					matched.add(resultSet.getString("definition"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return matched;
		}
	}

