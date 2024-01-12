<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    <form>
    	<table border="1" align="center">
    		<tr>
    			<td>
    				<input type="text" name="memberEmail" placeholder="이메일">
    				<input type="button" value="이메일 찾기" onclick="findEmail.do">
    			</td>
    		</tr>
    		<tr>
    			<th>
    				<input type="text" name="memberPwd" placeholder="비밀번호">
    				<input type="button" value="비밀번호 찾기" onclick="findPwd.do">
    			</th>
    		</tr>
    		<tr>
    			<td align="center">
    				<input type="button" value="로그인" onclick="login.do">
    				<input type="button" value="회원가입" onclick="location.href='register.do'">
    			</td>
    		</tr>
    	</table>
    </form>
</body>
</html>
