<%@ page language="java" contentType="text/html;charset=UTF-8;" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="database" class="com.database.Database">
  <jsp:setProperty property="ip" name="database" value="140.120.49.205" />
  <jsp:setProperty property="port" name="database" value="3306" />
  <jsp:setProperty property="db" name="database" value="4104029032" />
  <jsp:setProperty property="user" name="database" value="4104029032" />
  <jsp:setProperty property="password" name="database" value="Ss4104029032!" />
</jsp:useBean>
<%
 request.setCharacterEncoding("UTF-8");
 String url = "";
 String driver = "com.mysql.jdbc.Driver";
 ResultSet rs = null;
 String account = request.getParameter("account");
 String password = request.getParameter("password");
 String name = request.getParameter("name");
 String birth = request.getParameter("birth");
 String email = request.getParameter("email");
 String phone = request.getParameter("phone");
 int x = 0;int y = 0;
 String message="";
 if(account !=null && password !=null && name !=null && birth !=null && email !=null && phone !=null){
   try{
     database.connectDB();
     String sql = "select * from person;";
     database.query(sql);
     rs = database.getRS();
     if(rs!=null){
       while(rs.next()){
         String accountData = rs.getString("account");
         if(account.equals(accountData)){
           y+=1;
           break;
         }
       }
       if(y!=0){
         message="註冊失敗";
       }else{
         database.insertData(account,password,name,birth,email,phone);
         message="註冊成功";
         }
       }
     }catch(Exception ex){
       out.println(ex);
     }
   }else{
    message="登入成功！";
  }
 try{
   database.connectDB();
   String sql = "select * from person;";
   database.query(sql);
   rs = database.getRS();
 }catch(Exception ex){
   out.println(ex);
 }
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>會員管理</title>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.2.4.min.js"></script>
    <link rel="stylesheet" href="back.css">
		<link rel="stylesheet" href="sky-form.css">
  </head>
  <body class="bg-cyan">
    <div class="body body-s">
      <form class="sky-form">
        <header><%=message%></header>
        <fieldset>
          <%
          if(rs!=null && y==0){
            while(rs.next()){
              if(account.equals(rs.getString("account"))){
                if(password.equals(rs.getString("password"))){
                  String namet=rs.getString("name");
                  String birtht=rs.getString("birth");
                  String emailt=rs.getString("email");
                  String phonet=rs.getString("phone");
                  %>

                  <section>
                    <div class="row">
                      <label class="label col col-4">姓名:</label>
                      <div class="col col-8">
                        <label class="input">
                          <i class="icon-append icon-user"></i>
                          <%=namet%>
                        </label>
                      </div>
                    </div>
                  </section>

                  <section>
                    <div class="row">
                      <label class="label col col-4">生日:</label>
                      <div class="col col-8">
                        <label class="input">
                          <i class="icon-append icon-user"></i>
                          <%=birtht%>
                        </label>
                      </div>
                    </div>
                  </section>

                  <section>
                    <div class="row">
                      <label class="label col col-4">E-MAIL:</label>
                      <div class="col col-8">
                        <label class="input">
                          <i class="icon-append icon-user"></i>
                          <%=emailt%>
                        </label>
                      </div>
                    </div>
                  </section>

                  <section>
                    <div class="row">
                      <label class="label col col-4">手機:</label>
                      <div class="col col-8">
                        <label class="input">
                          <i class="icon-append icon-user"></i>
                          <%=emailt%>
                        </label>
                      </div>
                    </div>
                  </section>
                 <footer>
                  <button type="button" id="login" onclick="window.open('index.jsp','_self')" value="回到登入畫面" class="button">回到登入畫面</button>
                  <button type="button" id="login" onclick="window.open('search.jsp','_self')" value="回到登入畫面" class="button">進入搜索畫面</button>
                </footer>
                  <%
                  x+=1;
                  break;
                }
              }
            }
          }
          %>
          <%if(x==0 && y==0){%>
            <script>$("#test").html("登入失敗");</script>
            <p>帳號或密碼錯誤</p>
            <footer>
            <button type="button" onclick="window.open('index.jsp','_self')" value="回到登入畫面" class="button">回到登入畫面</button></footer>
        <%}%>
          <%if(y!=0){%>
            <p>帳號已被使用</p>
            <footer>
            <buttont type="button" onclick="history.back()" value="返回註冊頁面"class="button">返回註冊頁面</button>
            <button type="button" onclick="window.open('index.jsp','_self')" value="回到登入畫面" class="button">回到登入畫面</button></footer>
        <%}%>
          </fieldset>
      </form>
    </div>
  </body>
</html>
