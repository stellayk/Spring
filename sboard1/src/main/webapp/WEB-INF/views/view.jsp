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
    <title>View</title>
    <link rel="stylesheet" href="/sbaord1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="board" class="view">
            <h3>View</h3>
            <table>
                <tr>
                    <td>Title</td>
                    <td><input type="text" name="title" value="${ab.title}" readonly/></td>
                </tr>
                 <c:if test="${ab.file > 0}">
	                <tr>
	                    <td>Attached</td>
	                    <td>
	                        <a href="/sboard1/download?seq=${ab.fb.seq}">${ab.fb.oldName}</a>
	                        <span>${ab.fb.download} Download(s)</span>
	                    </td>
	                </tr>
                </c:if>
                <tr>
                    <td>Concent</td>
                    <td>
                        <textarea name="content" readonly>${ab.content}</textarea>
                    </td>
                </tr>
            </table>
            <div>
                <a href="#" class="btnDelete">Delete</a>
                <a href="/sbaord1/modify" class="btnModify">Edit</a>
                <a href="/sbaord1/list" class="btnList">List</a>
            </div>  
            
            <section class="commentList">
                <h3>Comments</h3>
                <c:if test="${ab.comment > 0}">
	                <article class="comment">
	                    <span>
	                        <span>Name</span>
	                        <span>20-05-13</span>
	                    </span>
	                    <textarea name="comment" readonly>sample</textarea>
	                    <div>
	                        <a href="#">Delete</a>
	                        <a href="#">Edit</a>
	                    </div>
	                </article>
                </c:if>
                
                <c:if test="${ab.comment == 0}">
	                <p class="empty">
	                    No Comment.
	                </p>
                </c:if>
            </section>

			<section class="commentForm">
                <h3>Write a comment.</h3>
                <form action="/sbaord1/comment" method="post">
                	<input type="hidden" name="parent" value="${ab.seq}"/>
                	<input type="hidden" name="uid" value="${suser.uid}"/>
                    <textarea name="comment"></textarea>
                    <div>
                        <a href="#" class="btnCancel">Cancel</a>
                        <input type="submit" class="btnWrite" value="Submit"/>
                    </div>
                </form>
            </section>

        </section>
    </div>    
</body>
</html>