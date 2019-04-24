<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mgr" class="guestbook.GuestBookMgr" />
<jsp:useBean id="bean" class="guestbook.guestbookBean" />
<jsp:setProperty property="*" name="bean"/>
<%
	//방명록 저장하는 ip값	
	bean.setIp(request.getRemoteAddr());
	
	//비밀글 체크를 안한 상태
	if(bean.getSecret() == null){
		bean.setSecret("0");
	}
	mgr.insertGuest(bean);
	response.sendRedirect("showGuestBook.jsp");
%>