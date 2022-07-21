<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의글 수정 폼</title>
</head>
<body>
<div align="center">
	<div><h1>문의글 수정 등록</h1></div>
	<div>
		<form id="frm" action="qnaBoardUpdateForm.do" method="post" enctype="form-data">
			순번<input type="number" id="boardNo" name="boardNo" value="${boardVO.boardNo}">
			유형<input type="text" id="boardId" name="boardId" value="${boardVo.boardId}">
			글쓴이<input type="text" id="boardWriter" name="boardWriter" value="${boardVo.boardWriter}">
			제목<input type="text" id="boardTitle" name="boaraTitle" value="${boardVo.boardTitle}">
			내용<input type="text" id="boardContent" name="boardContent" value="${boardVo.boardContent}">
			<button type="submit">등록</button>
		</form>
	</div>
</div>
</body>
</html>