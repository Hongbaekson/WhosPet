<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/layout/headerUser.jsp" /> 





<ul>
<c:forEach var="thumbnail" items="${userListThumbnail }" varStatus="status">
  <li>
  	<div>
		<label>
		<a href="/shop/view?sNo=${thumbnail.sNo }"><img alt="섬네일" src="/resources/shopimgupload/${thumbnail.siStoredFilename }" style="width: 200px;"><br>
		<c:forEach var="userList" items="${list }" begin="${status.index }" end="${status.index }" >
		<span>${userList.sName }</span><br>
		<span>${userList.sAmount }</span><br>
		</c:forEach>  
		</a>
		</label>
  	</div>
  </li>
  
  
  <br>
  <br>
</c:forEach>
</ul>

















<!-- 페이징 임포트 -->
<c:import url="/WEB-INF/views/util/shopPaging.jsp" />

<c:import url="/WEB-INF/views/layout/footerUser.jsp" />