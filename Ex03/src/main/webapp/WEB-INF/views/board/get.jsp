<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">

				<div class="form-group">
					<label>Bno</label><input class="form-control" name="bno"
						value="<c:out value='${board.bno }'/>" readonly="readonly">
				</div>
				<div class="form-group">
					<label>Title</label><input class="form-control" name="title"
						readonly="readonly" value="<c:out value='${board.title }'/>">
				</div>
				<div class="form-group">
					<label>Text area</label>
					<textarea class="form-control" row=3 name="content"
						readonly="readonly"><c:out value='${board.content }' /></textarea>
				</div>
				<div class="form-group">
					<label>Writer</label> <input class="form-control" name="writer"
						readonly="readonly" value="<c:out value='${board.writer }'/>">
				</div>
				<button data-oper="modify" class="btn btn-default">Modify</button>
				<button data-oper="list" class="btn btn-default">List</button>

				<form id="operForm" action="/board/modify" method="get">
					<input type="hidden" id="bno" name="bno"
						value="<c:out value='${board.bno}' />"> <input
						type="hidden" name="pageNum"
						value="<c:out value='${cri.pageNum}' />"> <input
						type="hidden" name="amount"
						value="<c:out value='${cri.amount}' />"> <input
						type="hidden" name="keyword"
						value="<c:out value='${cri.keyword}' />"> <input
						type="hidden" name="type" value="<c:out value='${cri.type}' />">
				</form>
			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.row -->
	<div class='row'>

		<div class="col-lg-12">

			<!-- /.panel -->
			<div class="panel panel-default">
				<!--       <div class="panel-heading">
        <i class="fa fa-comments fa-fw"></i> Reply
      </div> -->

				<div class="panel-heading">
					<i class="fa fa-comments fa-fw"></i> Reply
					<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New
						Reply</button>
				</div>


				<!-- /.panel-heading -->
				<div class="panel-body">

					<ul class="chat">
					<!--  start reply -->
					<li class="left clearfix" data-rno="12">
					<div>
					<div class="header">
					<strong class="primary-font">user00</strong>
					</div>
					</div>
					</ul>
					<!-- ./ end ul -->
				</div>
				<!-- /.panel .chat-panel -->

				<div class="panel-footer"></div>


			</div>
		</div>
		<!-- ./ end row -->
	</div>



	<%@ include file="../includes/footer.jsp"%>



	<script type="text/javascript" src="/resources/js/reply.js"></script>

	<script>
		console.log("====================");
		console.log("JS TEST");

		var bnoValue = "<c:out value='${board.bno}' />";

		// for replyService add test
		replyService.getList({
			bno : bnoValue,
			page : 1
		}, function(list) {

			for (var i = 0, len = list.length || 0; i < len; i++) {
				console.log(list[i]);
			}
		});

		/* 	replyService.remove(25,function(count){ // 댓글 삭제 테스트
				console.log(count);
				if(count==="success"){
					alert("REMOVED");
				}
			},function(err){
				alert("ERROR...");
			}); */

		/* 		replyService.update({ // 댓글 수정 테스트
					rno: 30,
					bno: bnoValue,
					reply: "댓글 수정햇써용"},function(result){
						alert("수정완료....");
					}); */

		replyService.get(10, function(data) {
			console.log(data);
		});
	</script>


	<script type="text/javascript">
		$(document).ready(function() {

			var operForm = $("#operForm");

			$("button[data-oper='modify']").on("click", function(e) {
				operForm.attr("action", "/board/modify").submit();

			});

			$("button[data-oper='list']").on("click", function(e) {
				operForm.find("#bno").remove();
				operForm.attr("action", "/board/list")
				operForm.submit();

			});

		});
	</script>