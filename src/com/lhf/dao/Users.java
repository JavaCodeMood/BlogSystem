package com.lhf.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lhf.common.Conn;
import com.lhf.common.MD5;
import com.lhf.model.UsersInfo;

/**
 * �û���Ϣ
 * @author lhf
 *
 */
public class Users {
	Conn conn = new Conn();

	/**
	 * ��ȡ�û��б�
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<UsersInfo> getList() throws SQLException {
		List<UsersInfo> list = new ArrayList<UsersInfo>();
		String sql = "select * from Users order by username asc";
		ResultSet rs = conn.executeQuery(sql);

		while (rs.next()) {
			UsersInfo info = new UsersInfo();
			info.setUsername(rs.getString("UserName"));
			info.setPassword(rs.getString("Password"));
			info.setEmail(rs.getString("Email"));
			info.setPower(rs.getString("Power"));
			list.add(info);
		}
		conn.close();
		return list;
	}

	/**
	 * ��õ����û���Ϣ
	 * 
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public boolean idExist(String username, String password)
			throws SQLException {
		boolean result = false;
		UsersInfo info = new UsersInfo();
		String sql = "select * from Users u where UserName='" + username
				+ "' and Password='" + password + "'";
		System.out.println(sql);
		ResultSet rs = conn.executeQuery(sql);

		if (rs.next()) {
			info.setUsername(rs.getString("UserName"));
			info.setPassword(rs.getString("Password"));
			info.setEmail(rs.getString("Email"));
			info.setPower(rs.getString("Power"));
			result = true;
		}

		conn.close();
		return result;

	}
	/**
	 * ��õ����û�
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public UsersInfo getUsersInfo(String username) throws SQLException {
		UsersInfo info = new UsersInfo();
		String sql = "select * from Users U where UserName='" + username + "'";
		ResultSet rs = conn.executeQuery(sql);
		if (rs.next()) {
			info.setUsername(rs.getString("UserName"));
			info.setPassword(rs.getString("Password"));
			info.setEmail(rs.getString("Email"));
			info.setPower(rs.getString("Power"));
		}
		conn.close();
		return info;

	}
	/**
	 * �ж�ע���û��Ƿ��Ѵ���
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public boolean isExistUsersInfo(String username) throws SQLException {
		boolean result=false;
		UsersInfo info = new UsersInfo();
		String sql = "select * from Users U where UserName='" + username + "'";
		ResultSet rs = conn.executeQuery(sql);
		if (rs.next()) {
			info.setUsername(rs.getString("UserName"));
			info.setPassword(rs.getString("Password"));
			info.setEmail(rs.getString("Email"));
			info.setPower(rs.getString("Power"));
			result=true;
		}
		conn.close();
		return result;

	}
	/**
	 * �û�����
	 * 
	 * @param info
	 * @return
	 */
	public int insert(UsersInfo info) {
		String sql = "insert into Users(UserName,Password,Email,Power) values ";
		sql = sql + " ('" + info.getUsername() + "','" + info.getPassword()
				+ "','" + info.getEmail() + "','" + info.getPower() + "')";
		int result = 0;
		result = conn.executeUpdate(sql);
		conn.close();
		return result;

	}

	/**
	 * �û��޸�
	 * 
	 * @param info
	 * @return
	 */
	public int update(UsersInfo info) {
		String sql = "update Users set Password='" + MD5.Encrypt(info.getPassword())
				+ "',Email='" + info.getEmail() + "',Power = '"
				+ info.getPower() + "' where UserName ='" + info.getUsername()
				+ "'";
		int result = 0;

		result = conn.executeUpdate(sql);
		conn.close();
		return result;

	}

	/**
	 * �û�ɾ��
	 * 
	 * @param id
	 * @return
	 */
	public int delete(String username) {
		String sql = "delete from Users where UserName ='" + username + "'";
		int result = 0;
		result = conn.executeUpdate(sql);
		conn.close();
		return result;
	}

}
