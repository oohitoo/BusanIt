<!-- directive3.jsp -->
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>

<%@ page errorPage="error.jsp" %>
<%
	int one = 1;
	int zero = 0;
%>
<h1>Directive Example3</h1>
one과 zero의 사칙연산<p/>
one+zero=<%=one + zero%><p/>
one-zero=<%=one - zero%><p/>
one*zero=<%=one * zero%><p/>
one/zero=<%=one / zero%><p/>