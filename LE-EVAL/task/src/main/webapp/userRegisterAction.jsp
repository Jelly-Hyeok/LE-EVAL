<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>

<%
   request.setCharacterEncoding("UTF-8");
   String userID = null;
   String userPassword = null;

   if(session.getAttribute("userID") != null) {
      userID = (String) session.getAttribute("userID");
   }
   
   if(userID != null) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('로그인이 된 상태입니다.');");
      script.println("location.href = 'index.jsp';");
      script.println("</script>");
      script.close();
      return;
   }
   
   if(request.getParameter("userID") != null) {
      userID = (String) request.getParameter("userID");
   }

   if(request.getParameter("userPassword") != null) {
      userPassword = (String) request.getParameter("userPassword");
   }

   if (userID == null || userPassword == null || userID.equals("") || userPassword.equals("")) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('입력이 안 된 사항이 있습니다.');");
      script.println("history.back();");
      script.println("</script>");
      script.close();
      return;
   }

   UserDAO userDAO = new UserDAO();
   
   int result = userDAO.join(new UserDTO(userID, userPassword));

   if (result == -1) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('이미 존재하는 아이디입니다.');");
      script.println("history.back();");
      script.println("</script>");
      script.close();
      return;
   } 
   
   else {
      session.setAttribute("userID", userID);
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("location.href = 'joinConfirm.jsp';");
      script.println("</script>");
      script.close();
      return;
   }

%>