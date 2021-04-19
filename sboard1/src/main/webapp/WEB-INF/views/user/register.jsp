<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="/sboard1/css/style.css"/>
</head>
<body>
    <div id="wrapper">
        <section id="user" class="register">
            <form action="/sboard1/user/register" method="POST">
                <table border="1">
                    <caption>Enter your account info.</caption>
                    <tr>
                        <td>User ID</td>
                        <td>
                            <input type="text" name="uid" placeholder="Enter ID"/>
                            <span class="resultId"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <input type="password" name="pass1" placeholder="Enter password"/>                            
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td>
                            <input type="password" name="pass2" placeholder="Enter password again"/>
                            <span class="resultPass"></span>
                        </td>
                    </tr>
                </table>
                <table border="1">
                    <caption>Enter your personal info.</caption>
                    <tr>
                        <td>Name</td>
                        <td>
                            <input type="text" name="name" placeholder="Enter your name"/>                            
                        </td>
                    </tr>
                    <tr>
                        <td>Nickname</td>
                        <td>
                            <p>You can use English, and numbers only.</p>
                            <input type="text" name="nick" placeholder="Enter your nickname"/>
                            <span class="resultNick"></span>                            
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail</td>
                        <td>
                            <input type="email" name="email" placeholder="Enter your email"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>
                            <input type="text" name="hp" placeholder="000-0000-0000" minlength="13" maxlength="13" />
                        </td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <div>
                                <input type="text" name="zip" placeholder="zipcode" readonly/>
                                <button class="btnZip">Search</button>
                            </div>                            
                            <div>
                                <input type="text" name="addr1" placeholder="Address Line 1" readonly/>
                            </div>
                            <div>
                                <input type="text" name="addr2" placeholder="Address Line 2"/>
                            </div>
                        </td>
                    </tr>
                </table>

                <div>
                    <a href="sboard1/user/login" class="btnCancel">Cancel</a>
                    <input type="submit"   class="btnJoin" value="Sign Up"/>
                </div>

            </form>
        </section>
    </div>    
</body>
</html>