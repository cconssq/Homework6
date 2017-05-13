<%@ page language="java" contentType="text/html;charset=UTF-8;" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>登入頁面</title>
    <link rel="stylesheet" href="back.css">
		<link rel="stylesheet" href="sky-form.css">
      <!--[if lt IE 9]>
  <link rel="stylesheet" href="css/sky-forms-ie8.css">
<![endif]-->

<!--[if lt IE 10]>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  <script src="js/jquery.placeholder.min.js"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <script src="js/sky-forms-ie8.js"></script>
<![endif]-->
  </head>
  <body class="bg-cyan">
    <div class="body body-s">
        <form action="member.jsp" method="post" class="sky-form">
          <header>Login</header>
          <fieldset>
  					<section>
  						<div class="row">
  							<label class="label col col-4">帳號</label>
  							<div class="col col-8">
  								<label class="input">
  									<i class="icon-append icon-user"></i>
  									<input name="account" type="text" placeholder="帳號" autocomplete="off" autofocus required/>
  								</label>
  							</div>
  						</div>
  					</section>

            <section>
  						<div class="row">
  							<label class="label col col-4">Password</label>
  							<div class="col col-8">
  								<label class="input">
  									<i class="icon-append icon-lock"></i>
  									<input name="password" id="password" type="password" placeholder="密碼" pattern="[A-Za-z0-9]{6,12}" title="請輸入6-12英文字母或數字" required/>
  								</label>
  							</div>
  						</div>
  					</section>

          </fieldset>
            <footer>
					<button type="submit" class="button">Log in</button>
          <button type="button" onclick="window.open('new.jsp','_self')" class="button button-secondary" value="Register"/>Register</button>
        </footer>
      </div>
    </form>
  </body>
</html>
