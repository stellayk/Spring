<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Terms</title>
    <link rel="stylesheet" href="/sboard1/css/style.css"/>    
</head>
<body>
    <div id="wrapper">
        <section id="user" class="terms">
            <table>
                <caption>Terms of Service</caption>
                <tr>
                    <td>
                         <textarea readonly>${termsVo.terms}</textarea>
                        <p>
                            <label><input type="checkbox" name="chk1"/> I agree.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <table>
                <caption>Privacy Policy</caption>
                <tr>
                    <td>
                        <textarea readonly>${termsVo.privacy}</textarea>
                        <p>
                            <label><input type="checkbox" name="chk2"/> I agree.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <div>
                <a href="/sboard1/user/login">Cancel</a>
                <a href="/sboard1/user/register">Next</a>
            </div>
        </section>
    </div>
    
</body>
</html>