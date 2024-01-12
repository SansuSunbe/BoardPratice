<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <link href="${path}/resources/css/register_form.css" rel="stylesheet"/> 
    <script>
        function checkPassword() {
            var password = document.forms["signupForm"]["pwdEnter"].value;
            var passwordPattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~\\/-]).{8,16}$/;

            if (passwordPattern.test(password)) {
                setMessage("blue", "사용 가능한 비밀번호입니다.");
            } else {
                setMessage("red", "비밀번호는 8글자 이상 16글자 이하, 대, 소문자, 숫자, 특수문자를 모두 포함해야 합니다.");
            }

            if (password.length > 16) {
                setMessage("red", "비밀번호는 16글자 이하로 입력해주십시오.");
            }
        }

        function setMessage(color, message) {
            var messageElement = document.getElementById("passwordMessage");
            messageElement.style.color = color;
            messageElement.innerHTML = message;
        }
    </script>
</head>
<body>
    <form name="signupForm">
        <h1 align="center">::: 회원가입 :::</h1>
        <table>
            <tr>
                <td>
                    <input type="text" name="emailEnter" placeholder="이메일">
                    <input type="button" value="중복확인" onclick="location.href='emailCheck.do'">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="password" name="pwdEnter" placeholder="비밀번호" onkeyup="checkPassword()">
                    <span id="passwordMessage"></span>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="name" placeholder="이름">
                    <input type="text" name="nickNameEnter" placeholder="닉네임 입력">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="회원가입">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
