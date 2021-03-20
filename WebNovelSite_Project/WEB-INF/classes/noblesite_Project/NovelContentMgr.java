package noblesite_Project;

import java.sql.*;
import java.util.*;



public class NovelContentMgr {
	private DBConnectionMgr dbmgr = null;
	public NovelContentMgr() {
		try
		{
			dbmgr = DBConnectionMgr.getInstance();
		}
		catch(Exception e)
		{
			System.out.println("Error !!");
		}
	}
	
	public boolean insertContent(NobleContentBean nbcont) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean inputchk=false;
        
        try {
            con = dbmgr.getConnection();
            String query = "insert into nobelcontent(title_num, title, content_title, date, nickname,count,nobelcontent,genre)"
                    + " values(?, ?, ? ,? ,?, ?, ?, ?)";
            pstmt = con.prepareStatement(query);
            pstmt.setInt(1, nbcont.gettitleid());
            pstmt.setString(2, nbcont.getNobeltitle());
            pstmt.setString(3, nbcont.getcontenttitle());
            pstmt.setString(4, nbcont.getContentdate());
            pstmt.setString(5, nbcont.getResnick());
            pstmt.setInt(6, nbcont.getClick());
            pstmt.setString(7, nbcont.getNobelcontent());
            pstmt.setString(8, nbcont.getGenre());
            int count = pstmt.executeUpdate();
            if(count == 1)
            	inputchk = true;
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            dbmgr.freeConnection(con, pstmt);
        }
        return inputchk;
    }
	
	 public NobleContentBean getContent(String no) {
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        NobleContentBean nbcont = null;

	        try {
	            con = dbmgr.getConnection();
	            String query = "select * from nobelcontent where title_num = ?";
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, no);
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	                nbcont = new NobleContentBean();
	                nbcont.setcontentid(rs.getInt("content_num"));
	                nbcont.settitleid(rs.getInt("title_num"));
	                nbcont.setContentdate(rs.getString("date"));
	                nbcont.setcontenttitle(rs.getString("content_title"));
	                nbcont.setResnick(rs.getString("nickname"));
	                nbcont.setNobelcontent(rs.getString("nobelcontent"));
	                nbcont.setClick(rs.getInt("count"));
	                nbcont.setNobeltitle(rs.getString("title"));
	            }
	        } catch (Exception e) {
	            System.out.println("Exception :" + e);
	        } finally {
	            dbmgr.freeConnection(con, pstmt, rs);
	        }
	        return nbcont;
	    }
	 
	  public Vector ContentList(String no) {
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        Vector vResult = new Vector();

	        try {
	            con = dbmgr.getConnection();
	            String query = "select * from nobelcontent where title_num = ? order by content_num desc";
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, no);
	            rs = pstmt.executeQuery();
	            while (rs.next()) {
	            	NobleContentBean nbcont = new NobleContentBean();
	                nbcont.setcontentid(rs.getInt("content_num"));
	                nbcont.settitleid(rs.getInt("title_num"));
	                nbcont.setContentdate(rs.getString("date"));
	                nbcont.setcontenttitle(rs.getString("content_title"));
	                nbcont.setResnick(rs.getString("nickname"));
	                nbcont.setNobelcontent(rs.getString("nobelcontent"));
	                nbcont.setClick(rs.getInt("count"));
	                nbcont.setNobeltitle(rs.getString("title"));
	                nbcont.setGenre(rs.getString("genre"));
	                vResult.add(nbcont);
	            }
	        } catch (Exception ex) {
	            System.out.println("Exception :" + ex);
	        } finally {
	            dbmgr.freeConnection(con, pstmt, rs);
	        }
	        return vResult;
	    }
	  
	  
	  
	  
	  public NobleContentBean getView(String content_no)
	  {
		  Connection con = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      NobleContentBean nbcont = null;
	      try
	      {  
	    	  con = dbmgr.getConnection();
	    	  String query = "select * from nobelcontent where content_num = ?";
	    	  pstmt = con.prepareStatement(query);
	    	  pstmt.setString(1, content_no);
	    	  rs = pstmt.executeQuery();
	    	  if (rs.next()) {
	                nbcont = new NobleContentBean();
	                nbcont.setcontentid(rs.getInt("content_num"));
	                nbcont.settitleid(rs.getInt("title_num"));
	                nbcont.setContentdate(rs.getString("date"));
	                nbcont.setcontenttitle(rs.getString("content_title"));
	                nbcont.setResnick(rs.getString("nickname"));
	                nbcont.setNobelcontent(rs.getString("nobelcontent"));
	                nbcont.setClick(rs.getInt("count"));
	                nbcont.setNobeltitle(rs.getString("title"));
	                nbcont.setGenre(rs.getString("genre"));
	            }
	      }
	      catch (Exception ex) 
	      {
	            System.out.println("Exception :" + ex);
	      } 
	      finally 
	      {
	            dbmgr.freeConnection(con, pstmt, rs);
	      }
	      return nbcont;
	  }
	  
	  public void ClickCount(int click, String no)
	  {
		  Connection con = null;
	      PreparedStatement pstmt = null;
	      try 
	      {
	    	  con = dbmgr.getConnection();
	    	  String sql = "update nobelcontent set count = ? where content_num = ?";
	    	  pstmt = con.prepareStatement(sql);
	    	  pstmt.setInt(1, click);
	    	  pstmt.setString(2, no);
	    	  pstmt.executeUpdate();
	      }
	      catch (Exception ex) 
	      {
	            System.out.println("Exception :" + ex);
	      } 
	      finally 
	      {
	            dbmgr.freeConnection(con, pstmt);
	      }
	  }
	  
	  public int total_click(String no)
	  {
		  Connection con = null;
	      Statement stmt = null;
	      ResultSet rs = null;
	   
	      int total_count=0;
	      try 
	      {
	    	  con = dbmgr.getConnection();
	    	  String sql1 = "select sum(nobelcontent.count) AS sum from nobelcontent,nobellist where nobellist.title_num =" + no + " and nobelcontent.title_num = " + no;
	    	  stmt = con.createStatement();
	    	  rs = stmt.executeQuery(sql1);
	    	  if(rs.next())
	    	  {
		    	  total_count = rs.getInt("sum");
		    	  String sql2 = "update nobellist set total_count = " + total_count + " where title_num = " + no;
		    	  stmt.executeUpdate(sql2);
	    	  }
	    	  
	      }
	      catch (Exception ex) 
	      {
	            System.out.println("Exception :" + ex);
	      } 
	      finally 
	      {
	            dbmgr.freeConnection(con, stmt);
	      }
	      return total_count;
	  }
	  
}
