<%@ page language="java" contentType="text/html;charset=UTF-8;" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>搜索</title>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.2.4.min.js"></script>
    <link rel="stylesheet" href="back.css">
		<link rel="stylesheet" href="sky-form.css">
  </head>
  <body class="bg-cyan">
    <div class="body body-s">
        <form action="data.jsp" method="post" class="sky-form">
        <header>Search</header>
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
                 <footer>
                <button type="submit" class="button">確認</button>
                </footer>
          </fieldset>
      </form>
    </div>
  </body>
</html>
