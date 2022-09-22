<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">

	<button class="btn" onclick="history.back()">돌아가기</button>
	<c:if test="${board.user.id == principal.user.id}">
		<a href="/board/${board.id}/updateForm" class="btn ">수정</a>
		<button id="btn-delete" class="btn">삭제</button>
	</c:if>
	<br /> <br />

	<div>
		글 번호 : <span id="id"><i>${board.id}</i></span> 작성자 : <span><i>${board.user.username}</i></span>
	</div>
	<br />

	<div class="form-group">
		<label for="title">Title</label>
		<h3>${board.title}</h3>
	</div>
	<hr />

	<div class="form-group">
		<label for="content">Content</label>
		<div>${board.content}</div>
	</div>
	<hr />

</div>

<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>
