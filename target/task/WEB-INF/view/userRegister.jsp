<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册</title>

</head>
<body>
<form method="post" action="${pageContext.request.contextPath }/getRegister"><!--指向的是路径名称-->
    <table width="100px" border=1>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="name" value="" /></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="text" name="password" value="" /></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input type="text" name="email" value="" /></td>
        </tr>
        <tr>
            <td colspan="5" align="center"><input type="submit" value="提交" />
            </td>
        </tr>
    </table>
</form>

</body>

</html>