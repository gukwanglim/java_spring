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

	<button id="btn-update" class="btn btn-primary">����</button>

</div>

<script>
$('.summernote').summernote({
	placeholder : '������ �ۼ����ּ���.',
	lang: "ko-KR",
	tabsize : 2,
	height : 300,
	toolbar: [
	    // �۲� ����
	    ['fontname', ['fontname']],
	    // ���� ũ�� ����
	    ['fontsize', ['fontsize']],
	    // ����, ����Ӳ�, ����,��� ��, ���������
	    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	    // ���ڻ�
	    ['color', ['forecolor','color']],
	    // ǥ�����
	    ['table', ['table']],
	    // �۸Ӹ� ��ȣ, ��ȣ�ű��, ��������
	    ['para', ['ul', 'ol', 'paragraph']],
	    // �ٰ���
	    ['height', ['height']],
	    // �׸�÷��, ��ũ�����, ������÷��
	    ['insert',['picture','link','video']],
	    // �ڵ庸��, Ȯ���ؼ�����, ����
	    ['view', ['codeview','fullscreen', 'help']]
	  ],
	  // �߰��� �۲�
	fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','���� ���','�ü�','����ü','����','����ü','����ü','����������'],
	 // �߰��� ��Ʈ������
	fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
});
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>
