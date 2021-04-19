<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${suser eq null}">
	<%-- redirect to login pg --%>
	<c:redirect url="/user/login?result=0"></c:redirect>
</c:if>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Post</title>
    <link rel="stylesheet" href="/sbaord1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="board" class="write">
            <h3>Post</h3>
            <article>
                <form action="/sboard1/write" method="POST" enctype="multipart/form-data">
                	<input type="hidden" name="uid" value="${suser.uid}" />
                    <table>
                        <tr>
                            <td>Title</td>
                            <td><input type="text" name="title" placeholder="Enter the title"/></td>
                        </tr>
                        <tr>
                            <td>Content</td>
                            <td>
                                <textarea name="content"></textarea>                                
                            </td>
                        </tr>
                        <tr>
                            <td>Attach</td>
                            <td><input type="file" name="fname"/></td>
                        </tr>
                    </table>
                    <div>
                        <a href="/sboard1/list" class="btnCancel">Cancel</a>
                        <input type="submit"  class="btnWrite" value="Submit">
                    </div>
                </form>
            </article>
        </section>
    </div>
</body>
</html>