<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">

	<button class="btn" onclick="history.back()">돌아가기</button>
	<c:if test="${board.user.id == principal.user.id}">
		<a href="/board/${board.id}/updateForm" class="btn ">수정</a>
		<!-- <button id="btn-delete" class="btn">삭제</button> -->
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

	<c:if test="${principal.user.id != null}">
	<div class="card">
		<form>
			<input type="hidden" id="userId" value="${principal.user.id}" /> <input type="hidden" id="boardId" value="${board.id}" />
			<div class="card-body">
				<textarea id="reply-content" class="form-control" rows="1"></textarea>
			</div>

			<div class="card-footer">
				<button type="button" id="btn-reply-save" class="btn">등록</button>
			</div>
		</form>
	</div>
	</c:if>
	<br />

	<div class="card">
		<div class="card-header">댓글 리스트</div>

		<ul id="reply--box" class="list-group">

			<c:forEach var="reply" items="${board.reply}">
				<li id="reply--${reply.id}" class="list-group-item d-flex justify-content-between">
					<div>${reply.content}</div>
					<div class="d-flex">
						<div class="font-italic">작성자 : ${reply.user.username} &nbsp</div>
						<c:if test="${reply.user.id == principal.user.id}">
							<button onclick="index.replyDelete(${board.id}, ${reply.id})" class="btn badge">삭제</button>
						</c:if>
					</div>
				</li>
			</c:forEach>

		</ul>
	</div>

</div>

<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>
