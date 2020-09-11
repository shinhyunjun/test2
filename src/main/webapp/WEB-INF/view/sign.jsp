
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>가입해보자!</title>
        <style>
            * {
                margin: 0;
                padding: 0;
            }

            h1 {
                width: 90px;
                height: 55px;
                text-align: center;
                color: #81F781;
                font-family: '맑은 고딕';
                display: block;
                margin-left: 10px;
                border: 1px solid #EFFBF5;
                position: absolute;
                background-color: #CEF6CE;
            }

            #nav_menu ul {
                margin-top: 15px;
                list-style-type: none;
                padding-left: 0px;
                float: right;
            }

                #nav_menu ul li {
                    display: inline-block;
                    padding: 0px 10px 0px 10px;
                    margin: 5px 0px 5px 0px;
                }

            h1 a {
                text-decoration: none;
                color: #81F781;
            }

            h4 a {
                text-decoration: none;
                color: black;
            }

            form {
                width: 600px;
                height: 600px;
                position: absolute;
                top: 220px;
                left: 520px;
                text-align: center;
            }

            form input {
                 width: 450px;
                 height: 30px;
                 margin: 7px;
                }

            form img {
                 width: 70px;

                }


        </style>

        <script type="text/javascript">

            function uploadImgPreview() {

                let fileInfo = document.getElementById("upImgFile").files[0];
                let reader = new FileReader();

                reader.onload = function () {

                    document.getElementById("thumbnailImg").src = reader.result;
                    document.getElementById("thumbnailUrl").innerText = reader.result;

                };


                if (fileInfo) {


                    reader.readAsDataURL(fileInfo);

                }

            }

        </script>

    </head>
    <body>
        <h1>  <a href="/home">   SCC  </a> </h1>
        <nav id="nav_menu">
            <ul>
                <li><h4><a href="search.html">요양시설 찾기</a></h4></li>
                <li><h4><a href="qa.html">자주하는 질문</a></h4></li>
                <li><h4><a href="post.html">공지사항</a></h4></li>
                <li><h4><a href="/login">회원가입/로그인</a></h4></li>
            </ul>
        </nav>

        <form method="post" action="insert">
            <fieldset>
                <legend>회원가입</legend>

                <div>
                    <img id="thumbnailImg" src="">
                    <input type="file" accept="image/*" id="upImgFile" onchange="uploadImgPreview();" />
                </div>
                <input type="text" name="user_id" id="user_id" placeholder="아이디">
                <input type="password" name="user_password" id="user_password" placeholder="비밀번호">
                <input type="text" name="user_name" id="user_name" placeholder="이름">
                <input type="number" name="user_birth" id="user_birth" placeholder="생년월일">
                <input type="number" name="user_age" id="user_age" placeholder="나이">
                <input type="text" name="user_sex" id="user_sex" placeholder="성별">
                <input type="text" name="user_phone" id="user_phone" placeholder="연락처">
                <input type="text" name="user_email" id="user_email" placeholder="이메일">
                <input type="submit" name="추가하기" id="insert" value="가입하기">
            </fieldset>
        </form>


    </body>
    </html>