package mnt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class RegisterMgrPool3 {
	
	private DBConnectionMgr pool = null;
	
	public RegisterMgrPool3() {
 	 try{
 	   pool = DBConnectionMgr.getInstance();
 	   }catch(Exception e){
 	      System.out.println("Error : 커넥션 얻어오기 실패");
 	   }
     }
 
    public Vector<RegisterBean3> getRegisterList() {
	   Connection conn = null;
	   Statement stmt = null;
	   ResultSet rs = null;
	   Vector<RegisterBean3> vlist = new Vector<RegisterBean3>();	   
       try {
    	   conn = pool.getConnection();
          String strQuery = "select * from mnt_info";
          stmt = conn.createStatement();
          rs = stmt.executeQuery(strQuery);
		  while (rs.next()) {
             RegisterBean3 bean = new RegisterBean3();
             bean.setM_id (rs.getInt("m_id"));
             bean.setM_name (rs.getString("m_name"));
             bean.setM_height (rs.getFloat("m_height"));
             bean.setM_place (rs.getString("m_place"));
             bean.setM_reason (rs.getString("m_reason"));
             bean.setM_simple(rs.getString("m_simple"));
             bean.setM_detail(rs.getString("m_detail"));
             bean.setM_trans(rs.getString("m_trans"));
             bean.setM_trip(rs.getString("m_trip"));
             bean.setM_img(rs.getString("m_img"));
             bean.setM_subname(rs.getString("m_subname"));
             vlist.addElement(bean);
 			
          }
       } catch (Exception ex) {
          System.out.println("Exception" + ex);
       } finally {
	      pool.freeConnection(conn);
       }
       return vlist;
    }
    
    public Vector<RegisterBean3> getBoardList(String keyField, String keyWord) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<RegisterBean3> vlist = new Vector<RegisterBean3>();
		try {
			con = pool.getConnection();
			if (keyWord.equals("null") || keyWord.equals("")) {
				sql = "select * from mnt_info";
				pstmt = con.prepareStatement(sql);
			} else {
				sql = "select * from  mnt_info where " + keyField + " like ? ";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + keyWord + "%");
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				RegisterBean3 bean = new RegisterBean3();
	             bean.setM_id (rs.getInt("m_id"));
	             bean.setM_name (rs.getString("m_name"));
	             bean.setM_height (rs.getFloat("m_height"));
	             bean.setM_place (rs.getString("m_place"));
	             bean.setM_reason (rs.getString("m_reason"));
	             bean.setM_simple(rs.getString("m_simple"));
	             bean.setM_detail(rs.getString("m_detail"));
	             bean.setM_trans(rs.getString("m_trans"));
	             bean.setM_trip(rs.getString("m_trip"));
	             bean.setM_img(rs.getString("m_img"));
	             bean.setM_subname(rs.getString("m_subname"));
	             vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
    
    
 }