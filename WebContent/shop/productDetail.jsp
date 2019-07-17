<%@page import="java.util.Vector"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<%@page import="shop.UtilMgr"%>
<%@page import="shop.productBean"%>
<jsp:useBean id="pMgr" class="shop.ProductMgr"/>
<%
	request.setCharacterEncoding("EUC-KR");
	int no = Integer.parseInt(request.getParameter("no"));
	out.print(no);
	productBean pbean = pMgr.getproduct(no);
%>
<html>
<head>
<title>Simple Shopping Mall</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">
<%@ include file="top.jsp" %>
<form name="cart" action="cartProc.jsp">
<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">
		<table width="95%" bgcolor="#FFFF99" border="1">
		<tr bgcolor="#996600"> 
		<td colspan="3" align="center">
			<font color="#FFFFFF"></font>
		</td>
		</tr>
		<tr> 
		<td width="20%">
		<img src="data/<%= pbean.getImage() %>" height="150" width="150">
		</td>
		<td width="30%" valign="top">
			<table>
			<tr>
				<td><b>��ǰ�̸� : <%= pbean.getName() %></b></td>
			</tr>			
			<tr>
				<td><b>��    �� : <%= UtilMgr.monFormat(pbean.getPrice()) %></b>��</td>
			</tr>
			<tr>
				<td><b>��    �� : </b><input name="quantity" size="5" value="1">��</td>
			</tr>
			<tr>
			<td align="center">
				<input type="submit" value="��ٱ��� ���">
			</td>
			</tr>
			</table>
			<input type="hidden" name="productNo" value="<%= pbean.getNo() %>">	
			<input type="hidden" name="flag" value="insert">			
		</td>
		<td width="50%" valign="top">
		<b>�󼼼���</b><br/>
		<pre><%= pbean.getDetail() %></pre>
		</td>
		</tr>
		</table>
	</td>
	</tr>
</table>
</form>
<%@ include file="bottom.jsp" %>
</body>
</html>