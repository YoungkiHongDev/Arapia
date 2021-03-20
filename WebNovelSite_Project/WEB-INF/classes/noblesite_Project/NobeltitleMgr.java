package noblesite_Project;

import java.sql.*;
import java.util.*;
import java.io.*;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServlet;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.xml.internal.ws.client.RequestContext;
import noblesite_Project.DBConnectionMgr;


public class NobeltitleMgr {

	private DBConnectionMgr dbmgr = null;
	
	public NobeltitleMgr() {
		   try {
	            dbmgr = DBConnectionMgr.getInstance();
	        } catch (Exception e) {
	            System.out.println("Error !!");
	        }
	}
	
	  public boolean insertTitle(HttpServletRequest req)
	  {
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        boolean result = false;
	        try 
	        {	
	        	
	        	String uploadDir =this.getClass().getResource("").getPath();
	        	uploadDir = uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"WebNovelSite_Project/WebContent/img";
	        	MultipartRequest multi = new MultipartRequest(req, uploadDir, 5 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());
	            
	            con = dbmgr.getConnection();
	            String query = "insert into nobellist(title, nickname , id, date, genre, nobel_img,introduce)"
	                    + "values(?, ?, ?, now(), ?, ?, ?)";
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, multi.getParameter("nobeltitle"));
	            pstmt.setString(2, multi.getParameter("resnick"));
	            pstmt.setString(3, multi.getParameter("resid"));
	            pstmt.setString(4, multi.getParameter("genre"));
	            
	            if (multi.getFilesystemName("nobelimg") == null) {
	                pstmt.setString(5, "img/cover1.PNG");
	            } else {
	                pstmt.setString(5, "img/" + multi.getFilesystemName("nobelimg"));
	            }
	            pstmt.setString(6, multi.getParameter("introduce"));
	            
	            int count = pstmt.executeUpdate();
	            if (count == 1) 
	            	result = true;
	        } 
	        catch (Exception ex)
	        {
	            System.out.println("Exception :" + ex);
	        } 
	        finally 
	        {
	            dbmgr.freeConnection(con, pstmt);
	        }
	        
	        
	        return result;
	  }
	  
	  public NobleTitleBean getTitle(String no) {
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        NobleTitleBean nbtitle = null;

	        try {
	            con = dbmgr.getConnection();
	            String query = "select * from nobellist where title_num=?";
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, no);
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	                nbtitle = new NobleTitleBean();
	                nbtitle.setTitleid(rs.getInt("title_num"));
	                nbtitle.setResid(rs.getString("id"));
	                nbtitle.setResnick(rs.getString("nickname"));
	                nbtitle.setIntroduce(rs.getString("introduce"));
	                nbtitle.setNobeltitle(rs.getString("title"));
	                nbtitle.setNobeldate(rs.getString("date"));
	                if(rs.getString("genre").equals("fantasy"))
	                {
	                	nbtitle.setNobelgenre("판타지");
	                }
	                else if(rs.getString("genre").equals("muhyup"))
	                {
	                	nbtitle.setNobelgenre("무협");
	                }
	                else if(rs.getString("genre").equals("fusionfantasy"))
	                {
	                	nbtitle.setNobelgenre("퓨전판타지");
	                }
	                else if(rs.getString("genre").equals("gamefantasy"))
	                {
	                	nbtitle.setNobelgenre("게임판타지");
	                }
	                else if(rs.getString("genre").equals("hyundaifantasy"))
	                {
	                	nbtitle.setNobelgenre("현대판타지");
	                }
	                nbtitle.setNobelimg(rs.getString("nobel_img"));
	            }
	        } catch (Exception ex) {
	            System.out.println("Exception :" + ex);
	        } finally {
	            dbmgr.freeConnection(con, pstmt, rs);
	        }
	        return nbtitle ;

	    }
	  

	    public boolean updateTitle(HttpServletRequest req) {
	        Connection con = null;
	        PreparedStatement pstmt = null;
	        boolean result = false;
	        
	        String uploadDir =this.getClass().getResource("").getPath();
	     	uploadDir =	   uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"WebNovelSite_Project/WebContent/img";

	        try {
	            con = dbmgr.getConnection();
	            MultipartRequest multi = new MultipartRequest(req, uploadDir, 5 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

	            if (multi.getFilesystemName("nobelimg") == null) {
	                String query = "update nobellist set title = ?, introduce = ?, genre = ? where title_num = ?";
	                pstmt = con.prepareStatement(query);
	                pstmt.setString(1, multi.getParameter("nobeltitle"));
	                pstmt.setString(2, multi.getParameter("introduce"));
	                pstmt.setString(3, multi.getParameter("genre")); 
	                pstmt.setString(4, multi.getParameter("titleid"));
	            } else {
	                String query = "update nobellist set title = ?, introduce = ?, genre = ?, nobel_img = ? where title_num = ?";
	                pstmt = con.prepareStatement(query);
	                pstmt.setString(1, multi.getParameter("nobeltitle"));
	                pstmt.setString(2, multi.getParameter("introduce"));
	                pstmt.setString(3, multi.getParameter("genre"));
	                pstmt.setString(4, multi.getFilesystemName("nobelimg"));
	                pstmt.setString(5, multi.getParameter("titleid"));
	            }
	            int count = pstmt.executeUpdate();
	            if (count == 1) result = true;
	        } catch (Exception ex) {
	            System.out.println("Exception :" + ex);
	        } finally {
	            dbmgr.freeConnection(con, pstmt);
	        }
	        return result;
	    }
	    
	    public Vector gettitleList() throws SQLException {
	        Connection con = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        Vector vtitle = new Vector();

	        try {
	            con = dbmgr.getConnection();
	            String query = "select * from nobellist order by total_count desc ,title_num desc";
	            stmt = con.createStatement();
	            rs = stmt.executeQuery(query);

	            while (rs.next()) {
	                NobleTitleBean nbtitle = new NobleTitleBean();
	                nbtitle.setTitleid(rs.getInt("title_num"));
	                nbtitle.setResid(rs.getString("id"));
	                nbtitle.setResnick(rs.getString("nickname"));
	                nbtitle.setNobeltitle(rs.getString("title"));
	                nbtitle.setIntroduce(rs.getString("introduce"));
	                nbtitle.setNobeldate(rs.getString("date"));
	                nbtitle.setNobelimg(rs.getString("nobel_img"));
	                nbtitle.setTotal_count(rs.getInt("total_count"));
	                if(rs.getString("genre").equals("fantasy"))
	                {
	                	nbtitle.setNobelgenre("판타지");
	                }
	                else if(rs.getString("genre").equals("muhyup"))
	                {
	                	nbtitle.setNobelgenre("무협");
	                }
	                else if(rs.getString("genre").equals("fusionfantasy"))
	                {
	                	nbtitle.setNobelgenre("퓨전판타지");
	                }
	                else if(rs.getString("genre").equals("gamefantasy"))
	                {
	                	nbtitle.setNobelgenre("게임판타지");
	                }
	                else if(rs.getString("genre").equals("hyundaifantasy"))
	                {
	                	nbtitle.setNobelgenre("현대판타지");
	                }
	                vtitle.add(nbtitle);
	            }
	        } catch (Exception ex) {
	            System.out.println("Exception :" + ex);
	        } finally {
	            dbmgr.freeConnection(con, stmt, rs);
	        }
	        return vtitle;
	    }
	    
	     
}
