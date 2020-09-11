
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title> 제발제발 </title>

    <style>
        table{
            width:700px;
            text-align:center;

         }
    </style>
</head>

<body>
    <table border="1">

             <tr>
                <th>n1</th>
                <th>n2</th>
                <th>n3</th>
                <th>n4</th>
             </tr>
            <c:forEach items="${memberList}" var="member">
            <tr>
                <td>${member.scc_num}</td>
                <td>${member.scc_district}</td>
                <td>${member.scc_phone}</td>
                <td>${member.scc_name}</td>
            </tr>
            </c:forEach>

    </table>



</body>
</html>