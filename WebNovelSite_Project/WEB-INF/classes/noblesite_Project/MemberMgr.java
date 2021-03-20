package noblesite_Project;

import java.sql.*;
import java.util.Vector;

import noblesite_Project.ResisterBean;

public class MemberMgr {
	private DBConnectionMgr dbmgr = null;
	public MemberMgr()
	{
		try 
		{
			dbmgr = DBConnectionMgr.getInstance();
		}
		catch(Exception e)
		{
			System.out.println("db커넥션 에러 : " + e);
		}
	}
	
	public boolean chkid(String id)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean idchk = false;
		try 
		{
			con = dbmgr.getConnection();
			String squery = "select id from member where id = ?";
			pstmt = con.prepareStatement(squery);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			idchk = rs.next();
		}
		catch(Exception e)
		{
			 System.out.println("Exception" + e);
		}
		finally
		{
			dbmgr.freeConnection(con, pstmt, rs);
		}
		
		return idchk;
	}
	
	public boolean inputRes(ResisterBean res)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean inputchk = false;
		try {
			con = dbmgr.getConnection();
			String squery = "insert into member(id,pw,name,nick,phone,email,addr) values(?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(squery);
			pstmt.setString(1,res.getResid());
			pstmt.setString(2,res.getRespw());
			pstmt.setString(3,res.getResname());
			pstmt.setString(4,res.getResnick());
			pstmt.setString(5,res.getResphone());
			pstmt.setString(6,res.getResemail());
			pstmt.setString(7,res.getResaddr());
			int count = pstmt.executeUpdate();
			
			if(count == 1)
				inputchk = true;
			
		}
		catch(Exception e)
		{
			System.out.println("Exception" + e);
		}
		finally
		{
			dbmgr.freeConnection(con, pstmt);
		}
		return inputchk;		
	}
	public ResisterBean getMembers(String resid)
	{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ResisterBean resBean = null;
		
		try 
		{
			con = dbmgr.getConnection();
			String squery = "select * from member where id = ? ;";
			pstmt = con.prepareStatement(squery);
			pstmt.setString(1, resid);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				resBean = new ResisterBean();
				resBean.setResid(rs.getString("id"));
				resBean.setRespw(rs.getString("pw"));
				resBean.setResname(rs.getString("name"));
				resBean.setResnick(rs.getString("nick"));
				resBean.setResphone(rs.getString("phone"));
				resBean.setResemail(rs.getString("email"));
				resBean.setResaddr(rs.getString("addr"));
				resBean.setResgrade(rs.getString("grade"));
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Exception" + e);
		}
		finally
		{
			dbmgr.freeConnection(con,pstmt,rs);
		}
		
		return resBean;
	}
	 public Vector getMemberList() 
	 {
	        Connection con = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	        Vector vecList = new Vector();

	        try 
	        {
	            con = dbmgr.getConnection();
	            String strQuery = "select * from member";
	            stmt = con.createStatement();
	            rs = stmt.executeQuery(strQuery);

	            while (rs.next()) 
	            {
	                ResisterBean resBean = new ResisterBean();
	            	resBean.setResid(rs.getString("id"));
					resBean.setRespw(rs.getString("pw"));
					resBean.setResname(rs.getString("name"));
					resBean.setResnick(rs.getString("nick"));
					resBean.setResphone(rs.getString("phone"));
					resBean.setResemail(rs.getString("email"));
					resBean.setResaddr(rs.getString("addr"));
					resBean.setResgrade(rs.getString("grade"));
	                vecList.add(resBean);
	            }
	        } 
	        catch (Exception e) 
	        {
	            System.out.println("Exception" + e);
	        } 
	        finally 
	        {
	            dbmgr.freeConnection(con, stmt, rs);
	        }
	        return vecList;
}

public boolean memberUpdate(ResisterBean resBean) 
{
    Connection con = null;
    PreparedStatement pstmt = null;
    boolean flag = false;
    try 
    {
        con = dbmgr.getConnection();
        String strQuery = "update member set pw=?, name=?,nick=?,";
        strQuery = strQuery + " email=?, phone=?, addr=?";
        strQuery = strQuery + " where id=? ";

        pstmt = con.prepareStatement(strQuery);
        pstmt.setString(1, resBean.getRespw());
        pstmt.setString(2, resBean.getResname());
        pstmt.setString(3, resBean.getResnick());
        pstmt.setString(4, resBean.getResemail());
        pstmt.setString(5, resBean.getResphone());
        pstmt.setString(6, resBean.getResaddr());
        pstmt.setString(7, resBean.getResid());
        int count = pstmt.executeUpdate();

        if (count == 1) 
        {
            flag = true;
        }
	} 
    
    catch (Exception ex) 
    {
        System.out.println("Exception" + ex);
    }
    
    finally 
    {
        dbmgr.freeConnection(con, pstmt);
    }
    
    return flag;
}

public boolean loginCheck(String id, String passwd) 
{
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    boolean loginCon = false;
    try 
    {
        con = dbmgr.getConnection();
        String strQuery = "select id, pw from member where id = ? and pw = ?";
        pstmt = con.prepareStatement(strQuery);
        pstmt.setString(1, id);
        pstmt.setString(2, passwd);
        rs = pstmt.executeQuery();
        loginCon = rs.next();
    } 
    catch (Exception ex) 
    {
        System.out.println("Exception" + ex);
    } 
    finally 
    {
        dbmgr.freeConnection(con, pstmt, rs);
    }
    return loginCon;
}

public boolean deleteAction(ResisterBean resBean)
{
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;
	boolean delete = false;
	try {
		con = dbmgr.getConnection();
		String strQuery = "delete from member where id = ?";
		pstmt = con.prepareStatement(strQuery);
		pstmt.setString(1, resBean.getResid());
		result = pstmt.executeUpdate();
		
		if (result == 1) 
        {
            delete = true;
        }
	}
	catch (Exception ex) 
    {
        System.out.println("Exception" + ex);
    } 
    finally 
    {
        dbmgr.freeConnection(con, pstmt, rs);
    }
	return delete;
}

}