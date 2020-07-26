package mnt;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

public class RegisterMgrPool4 {
	
	private DBConnectionMgr pool = null;
	
	public RegisterMgrPool4() {
 	 try{
 	   pool = DBConnectionMgr.getInstance();
 	   }catch(Exception e){
 	      System.out.println("Error : 커넥션 얻어오기 실패");
 	   }
     }
 
    public Vector<RegisterBean4> getRegisterList() {
	   Connection conn = null;
	   Statement stmt = null;
	   ResultSet rs = null;
	   Vector<RegisterBean4> vlist = new Vector<RegisterBean4>();	   
       try {
    	  conn = pool.getConnection();
          String strQuery = "select * from mnt_info m, mnt_reco_season ms where m.m_id = ms.m_id";
          stmt = conn.createStatement();
          rs = stmt.executeQuery(strQuery);
		  while (rs.next()) {
             RegisterBean4 bean = new RegisterBean4();
             bean.setM_id (rs.getInt("m_id"));
             bean.setM_name (rs.getString("m_name"));
             bean.setM_num (rs.getInt("m_num"));
             bean.setContent (rs.getString("content"));
             bean.setM_season(rs.getInt("m_season"));
             vlist.addElement(bean);
 			
          }
       } catch (Exception ex) {
          System.out.println("Exception" + ex);
       } finally {
	      pool.freeConnection(conn);
       }
       return vlist;
    }
 }