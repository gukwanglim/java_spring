<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ include file="../layout/header.jsp"%>

<script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">

<div class="container">

	<form>

		<input type="hidden" id="id" value="${board.id}"/>
		<div class="form-group">
			<label for="title">title</label> 
			<input value="${board.title}" type="text" class="form-control" placeholder="Enter title" id="title">
		</div>

		<div class="form-group">
			<label for="content">content</label>
			<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
		</div>

	</form>

	<button id="btn-update" class="btn btn-primary">수정</button>

</div>

<script>
$('.summernote').summernote({
	placeholder : '내용을 작성해주세요.',
	lang: "ko-KR",
	tabsize : 2,
	height : 300,
	toolbar: [
	    // 글꼴 설정
	    ['fontname', ['fontname']],
	    // 글자 크기 설정
	    ['fontsize', ['fontsize']],
	    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
	    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	    // 글자색
	    ['color', ['forecolor','color']],
	    // 표만들기
	    ['table', ['table']],
	    // 글머리 기호, 번호매기기, 문단정렬
	    ['para', ['ul', 'ol', 'paragraph']],
	    // 줄간격
	    ['height', ['height']],
	    // 그림첨부, 링크만들기, 동영상첨부
	    ['insert',['picture','link','video']],
	    // 코드보기, 확대해서보기, 도움말
	    ['view', ['codeview','fullscreen', 'help']]
	  ],
	  // 추가한 글꼴
	fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체','나눔스퀘어'],
	 // 추가한 폰트사이즈
	fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
});
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>
