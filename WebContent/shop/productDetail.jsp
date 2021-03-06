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
				<td><b>상품이름 : <%= pbean.getName() %></b></td>
			</tr>			
			<tr>
				<td><b>가    격 : <%= UtilMgr.monFormat(pbean.getPrice()) %></b>원</td>
			</tr>
			<tr>
				<td><b>수    량 : </b><input name="quantity" size="5" value="1">개</td>
			</tr>
			<tr>
			<td align="center">
				<input type="submit" value="장바구니 담기">
			</td>
			</tr>
			</table>
			<input type="hidden" name="productNo" value="<%= pbean.getNo() %>">	
			<input type="hidden" name="flag" value="insert">			
		</td>
		<td width="50%" valign="top">
		<b>상세설명</b><br/>
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