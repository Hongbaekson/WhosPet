<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/layout/headerAdmin.jsp" /> 
<h1>상품관리목록</h1>

<table class="table table-striper table-hover">
<thead>
<tr>
	<th>상품번호</th>
	<th>상품명</th>
	<th>상품금액</th>
	<th>상품수량</th>
	<th>상품종류</th>
	<th>등록날짜</th>
</tr>
</thead>

<c:forEach items="${list }"  var="board">
<tr>
<td>${board.sNo }</td>
<td>${board.sName }</td>
<td>${board.sAmount }</td>
<td>${board.sQuantity }</td>
<td>${board.sProductType }</td>
<td>${board.sDate }</td>
</tr>
</c:forEach>

</table>





















<c:import url="/WEB-INF/views/shop/paging.jsp" />

<c:import url="/WEB-INF/views/layout/footerAdmin.jsp" />