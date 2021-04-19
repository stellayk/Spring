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
    <title>List</title>
    <link rel="stylesheet" href="/sboard1/css/style.css">    
</head>
<body>
    <div id="wrapper">
        <section id="board" class="list">
            <h3>List</h3>
            <article>
                <p>
                    Welcome, ${suser.nick}.
                    <a href="/sboard1/user/logout" class="logout">[LOGOUT]</a>
                </p>
                <table border="0">
                    <tr>
                        <th>No.</th>
                        <th>Title</th>
                        <th>Name</th>
                        <th>Date</th>
                        <th>Hit</th>
                    </tr>
                    <c:forEach var="article" items="${articles}">
	                    <tr>
	                        <td>${pageStartNum=pageStartNum-1}</td>
	                        <td><a href="/sboard1/view?seq=${article.seq}">${article.title}</a>&nbsp;[${article.comment}]</td>
	                        <td>${article.nick}</td>
	                        <td>${article.rdate.substring(2, 10)}</td>
	                        <td>${article.hit}</td>
	                    </tr>
                    </c:forEach>
                </table>
            </article>

            <!-- page navigation -->
            <div class="paging">
                <c:if test="${groups[0] > 1}">
                	<a href="/sboard1/list?pg=${groups[0] - 1}" class="prev">Prev</a>
                </c:if>
                
                <c:forEach var="i" begin="${groups[0]}" end="${groups[1]}">
                	<a href="/sboard1/list?pg=${i}" class="num ${currentPage == i ? 'current':'off'}">${i}</a>                
				</c:forEach>
				
				<c:if test="${groups[1] < lastPageNum}">     
                	<a href="/sboard1/list?pg=${groups[1] + 1}" class="next">Next</a>
               	</c:if>
            </div>

            <!-- post button -->
            <a href="/sboard1/write" class="btnWrite">Post</a>

        </section>
    </div>    
</body>
</html>