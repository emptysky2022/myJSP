package com.keduit.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.keduit.dto.BoardVO;

import util.DBManager;

public class BoardDAO {
	private BoardDAO() {
		
	}
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardVO> selectAllBoards(){
		String sql = "select * from board order by num desc";
		List<BoardVO> list = new ArrayList<>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				BoardVO bVO = new BoardVO();
				
				bVO.setNum(rs.getInt("num"));
				bVO.setName(rs.getString("name"));
				bVO.setEmail(rs.getString("email"));
				bVO.setPass(rs.getString("pass"));
				bVO.setTitle(rs.getString("title"));
				bVO.setContent(rs.getString("content"));
				bVO.setWritedate(rs.getTimestamp("writedate"));
				bVO.setReadcount(rs.getInt("readcount"));
				
				list.add(bVO);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return list;
	}
	
	public void insertBoard(BoardVO bVO) {
		String sql = "insert into board (name, email, pass, title, content) values(?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVO.getName());
			pstmt.setString(2, bVO.getEmail());
			pstmt.setString(3, bVO.getPass());
			pstmt.setString(4, bVO.getTitle());
			pstmt.setString(5, bVO.getContent());
			
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public BoardVO selectOneBoardByNum(String num) {
		BoardVO bVO = null;
		String sql = "select * from board where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			rs = pstmt.executeQuery();
			System.out.println("rs = " + rs);
			while(rs.next()) {
				bVO = new BoardVO();				
				bVO.setNum(rs.getInt("num"));	
				bVO.setName(rs.getString("name"));
				bVO.setPass(rs.getString("pass"));
				bVO.setEmail(rs.getString("email"));
				bVO.setTitle(rs.getString("title"));
				bVO.setContent(rs.getString("content"));
				bVO.setWritedate(rs.getTimestamp("writedate"));
				bVO.setReadcount(rs.getInt("readcount"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVO;
	}
	
	public void updateBoard(BoardVO bVO) {
		String sql = "update board set name=?, email=?, pass=?, title=?, content=? where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVO.getName());			
			pstmt.setString(2, bVO.getEmail());			
			pstmt.setString(3, bVO.getPass());			
			pstmt.setString(4, bVO.getTitle());			
			pstmt.setString(5, bVO.getContent());			
			pstmt.setInt(6, bVO.getNum());
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	public void updateReadCount(String num) {
		String sql = "update board set readcount=readcount+1 where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void deleteBoard(String num) {
		String sql = "delete from board where num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(num));
			pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
}
