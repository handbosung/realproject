<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap">
<link href="/member_mainpage_merge/css/header.css" rel="stylesheet" />
<link href="/member_mainpage_merge/css/login.css" rel="stylesheet" />
    <title>로그인 페이지</title>

</head>

<body class="b">
<%@ include file="header.jsp"%>
    <div class="login-container">
        <form id="login-form" class="f" action="./MemberLoginAction.member" method="post">
            <label for="username" class="l">아이디</label>
            <input type="text" class="i" id="username" name="user_id" required>
            
            <label for="password" class="l">비밀번호</label>
            <input type="password" class="i" id="password" name="password" required>
            
            <input type="submit" class="bu" value="로그인">
            <button type="button" class="bu" onclick="location.href='./memberjoin.member'">회원가입</button>
        </form>
    </div>

    <script src="script.js"></script>
</body>


</html>
