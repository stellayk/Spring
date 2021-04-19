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
    <title>Modify</title>
    <link rel="stylesheet" href="/sboard1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="board" class="modify">
            <h3>Modify</h3>
            <article>
                <form action="#">
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
                            <td><input type="file" name="file"/></td>
                        </tr>
                    </table>
                    <div>
                        <a href="/sboard1/list" class="btnCancel">Cancel</a>
                        <input type="submit"  class="btnWrite" value="Save changes">
                    </div>
                </form>
            </article>
        </section>
    </div>
</body>
</html>