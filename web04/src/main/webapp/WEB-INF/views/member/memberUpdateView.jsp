<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<title>회원가입</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dateType : "json",
					data : $("#updateForm").serializeArray(),
					success: function(data){
						
						if(data==true){
							if(confirm("회원수정하시겠습니까?")){
								$("#updateForm").submit();
							}
							
						}else{
							alert("패스워드가 틀렸습니다.");
							return;
							
						}
					}
				})
			});
		})
	</script>
<body>
<section id="container">
	<header>
		<h1></h1>
	</header>
	<hr />
	<div>
		<%@include file="nav.jsp" %>
	</div>
	<div class="content">
		<h2 class="title">회원정보수정</h2>
		<form id="updateForm" action="/member/memberUpdate" method="post">
			<div class="form-group has-feedback">
				<label class="control-label" for="userid">아이디</label>
				<input class="form-control" type="text" id="userid" name="userid" value="${member.userid}" readonly="readonly"/>
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userpass">패스워드</label>
				<input class="form-control" type="password" id="userpass" name="userpass" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="username">성명</label>
				<input class="form-control" type="text" id="username" name="username" value="${member.username}"/>
			</div>
			<div class="form-group has-feedback">
				<button class="btn btn-success" type="button" id="submit">회원정보수정</button>
				<button class="cencle btn btn-danger" type="button">취소</button>
			</div>
		</form>
	</div>	
</section>
</body>
</html>