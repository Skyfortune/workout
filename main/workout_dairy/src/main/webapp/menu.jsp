<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<!-- bootstrap ver:4.6 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">



<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Eighth navbar example">
    <div class="container">
      <a class="navbar-brand" href="../main.jsp">HOME</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExample07">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <c:choose>
        	<c:when test="${empty sessionId}">
          <li class="nav-item">
            <a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href='<c:url value="/member/addMember.jsp"/>'>Sign in</a>
          </li>
           </c:when>
           <c:otherwise>
           	<li style="padding-top: 7px; color:white"><%=sessionId%>님 오늘도 득근하세요!</li>
           <li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">Logout</a></li>
           <li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMember.jsp"/>">Fix info</a></li>
           <li class="nav-item"><a class="nav-link" href="<c:url value="/Routine/showyou.jsp"/>">My work out</a></li>
           </c:otherwise>
           </c:choose>
           <li class="nav-item">
            <a class="nav-link" href="../Routines.jsp">Routines</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="./Ranking.jsp">Ranking</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">now making</a>
          </li>
          
          
        </ul>
      </div>
    </div>
  </nav>
