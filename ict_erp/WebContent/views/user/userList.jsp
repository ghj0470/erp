<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file = "/views/common/common.jsp"%>
<%!
public List<Map<String,String>> getMemberList(){
	List<Map<String,String>> memberList = new ArrayList<Map<String,String>>();
	String url="jdbc:oracle:thin@localhost:1521:xe";
	String root = "ictu";
	String passward = "12345678";
	String driver = "oracle.jdbc.driver.OracleDriver";
	Connection con=null;
	
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url,root,passward);
		String sql = "select * from member_info";
		PreparedStatement  ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Map<String,String> member = new HashMap<String,String>();
			member.put("miNo",rs.getString("miNo"));
			member.put("miId",rs.getString("miId"));
			member.put("miNo",rs.getString("miPwd"));
			member.put("miNo",rs.getString("DINO"));
			member.put("miNo",rs.getString("miNo"));
			member.put("miNo",rs.getString("miNo"));
			member.put("miNo",rs.getString("miNo"));
			member.put("miNo",rs.getString("miNo"));
			member.put("miNo",rs.getString("miNo"));
		}
	
	}catch(ClassNotFoundException cnfe){
		
	}catch(SQLException sqle){
		
	}
	return memberList;
}
%>
<html>

<body>

</body>
</html>