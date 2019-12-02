package one;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class Mysql {
	Connection connection = null;
	PreparedStatement pre = null;
	ResultSet set = null;
	Statement statement = null;

	public Mysql() {

	}

	public void conn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("连接数据库");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/school?useSSL=false", "root", "123456");
			System.out.println("连接数据库成功");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public boolean biao1_insert(String name, String id, String banji) {
		boolean flag = false;
		String sql = "insert into biao1(name,id,banji) value(?,?,?)";
		try {
			conn();
			pre = connection.prepareStatement(sql);
			pre.setString(1, name);
			pre.setString(2, id);
			pre.setString(3, banji);
			System.out.println("1插入失败");

			int b = pre.executeUpdate();
			System.out.println("2插入失败");

			if (b > 0) {
				System.out.println("插入数据成功");
				flag = true;
			}
		} catch (Exception e) {
			System.out.println("插入失败");
		} finally {
			try {
				// pre.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return flag;
	}

	public boolean biao2_insert(int exams, String name, String answers) {
		boolean flag = false;
		String sql = "insert into biao2(exams,name,answers) value(?,?,?)";
		try {
			conn();
			pre = connection.prepareStatement(sql);
			pre.setInt(1, exams);
			pre.setString(2, name);
			pre.setString(3, answers);
			// for (int i=0;i<answers.length;i++) {
			// pre.setString(i + 1, answers[i]);
			// }
			int in = pre.executeUpdate();
			if (in > 0) {
				flag = true;

			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return flag;

	}

	public boolean select(String password) throws SQLException {
		conn();
		People people = new People();
		String sql = "select password from biao4 where password=?";
		pre = connection.prepareStatement(sql);
		pre.setString(1, password);
		ResultSet rSet = pre.executeQuery();
		if (rSet.next()) {
			// pre.setString(1, password);
			people.setPassword(password);
			return true;

		} else {
			return false;
		}
	}

	public People[] selectDaAn() throws SQLException {
		conn();
		boolean fl = true;
		String sql = "select * from DaAn";
		pre = connection.prepareStatement(sql);
		
		People user = new People();
		People[] users = null;
		int i = 0;
		int count = 0;
		set = pre.executeQuery();
		while (set.next()) {
			count++;
		}
		users = new People[count];
		set = pre.executeQuery();
		while (set.next()) {
			int id = set.getInt("exams");
			user.setExam(id);
			String name1 = set.getString("name");
			user.setName(name1);
			String answer = set.getString("answers");
			user.setAnswers(answer);
			users[i++] = user;
			System.out.println(id);
			System.out.println(answer);
			System.out.println(name1);
			count++;
		}
//		connection.close();
		return users;

	}
	public boolean biao3_insert(String name, int score) {
		conn();
		boolean flag = false;
		String sql="insert into biao3(name,score) value(?,?)";
		try {
			conn();
			pre = connection.prepareStatement(sql);
			pre.setString(1, name);
			pre.setInt(2, score);
			int in = pre.executeUpdate();
			if (in > 0) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return flag;

	}
}