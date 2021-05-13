<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="/sboard1/css/style.css"/>
    <script>
    	var result = ${result};
    	if(result == 0){
    		alert('You need to log in.');
    	}
    
    </script>
</head>
<body>
    <div id="wrapper">
        <section id="user" class="login">
            <form action="/sboard1/user/login" method="post">
                <table border="0">
                    <tr>
                        <td><img src="/sboard1/img/login_ico_id.png" alt="ID"/></td>
                        <td><input type="text" name="uid" placeholder="Enter your ID" /></td>
                    </tr>
                    <tr>
                        <td><img src="/sboard1/img/login_ico_pw.png" alt="Password"/></td>
                        <td><input type="password" name="pass" placeholder="Enter your password" /></td>
                    </tr>
                </table>
                <input type="submit" class="btnLogin" value="Login"/>
            </form>

            <div class="info">
                <h3>Login</h3>
                <p>
                    Join us if you don't have an account!
                </p>
                <a href="/sboard1/user/terms">Join</a>
            </div>

        </section>
    </div>    
</body>
</html>