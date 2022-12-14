package com.emptysky.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.emptysky.dto.EmployeeVO;
import com.emptysky.util.DBManager;

public class EmployeeDAO {
	private EmployeeDAO() {};
	
	private static EmployeeDAO instance = new EmployeeDAO();
	
	public static EmployeeDAO getInstance() {
		return instance;
	}
	
	public List<EmployeeVO> getAllEmployeesList(){
		String sql = "select * from employees";
		List<EmployeeVO> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			EmployeeVO eVO;
			while(rs.next()) {
				eVO = new EmployeeVO();
				eVO.setId(rs.getString("id"));
				eVO.setPass(rs.getString("pass"));
				eVO.setName(rs.getString("name"));
				eVO.setLev(rs.getString("lev"));
				eVO.setEnter(rs.getTimestamp("enter"));
				eVO.setGender(rs.getString("gender"));
				eVO.setPhone(rs.getString("phone"));
				list.add(eVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public EmployeeVO getOneEmployee(String id) {
		String sql = "select * from employees where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		EmployeeVO eVO = new EmployeeVO();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				eVO.setId(rs.getString("id"));
				eVO.setName(rs.getString("name"));
				eVO.setPass(rs.getString("pass"));
				eVO.setLev(rs.getString("lev"));
				eVO.setPhone(rs.getString("phone"));
				eVO.setGender(rs.getString("gender"));
				eVO.setEnter(rs.getTimestamp("enter"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return eVO;
	}
	
	public void insertEmployee(EmployeeVO eVO) {
		String sql = "insert into employees values(?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eVO.getId());
			pstmt.setString(2, eVO.getPass());
			pstmt.setString(3, eVO.getName());
			pstmt.setString(4, eVO.getLev());
			pstmt.setTimestamp(5, eVO.getEnter());
			pstmt.setString(6, eVO.getGender());
			pstmt.setString(7, eVO.getPhone());
			
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void updateEmployee(String id, EmployeeVO eVO) {
		String sql = "update employees set id=?, pass=?, name=?, lev=?, gender=?, enter=?, phone=? where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eVO.getId());
			pstmt.setString(2, eVO.getPass());
			pstmt.setString(3, eVO.getName());
			pstmt.setString(4, eVO.getLev());
			pstmt.setString(5, eVO.getGender());
			pstmt.setTimestamp(6, eVO.getEnter());
			pstmt.setString(7, eVO.getPhone());
			pstmt.setString(8, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void deleteEmployee(String id) {
		String sql = "delete from employees where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}
