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
    <title>註冊</title>
    <link rel="stylesheet" href="back.css">
		<link rel="stylesheet" href="sky-form.css">
  </head>
  <body>
    <body class="bg-cyan">
      <div class="body body-s">
          <form action="member.jsp" method="post" class="sky-form">
            <header>Register</header>
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

              <section>
               <div class="row">
                 <label class="label col col-4">姓名</label>
                 <div class="col col-8">
                   <label class="input">
                     <i class="icon-append icon-lock"></i>
                     <input name="name" type="text" placeholder="姓名" autocomplete="off"/>
                   </label>
                 </div>
               </div>
             </section>

             <section>
              <div class="row">
                <label class="label col col-4">生日</label>
                <div class="col col-8">
                  <label class="input">
                    <i class="icon-append icon-lock"></i>
                    <input name="birth" type="text" placeholder="生日" autocomplete="off"/>
                  </label>
                </div>
              </div>
            </section>

            <section>
             <div class="row">
               <label class="label col col-4">E-mail</label>
               <div class="col col-8">
                 <label class="input">
                   <i class="icon-append icon-lock"></i>
                   <input name="email" type="text" placeholder="email" autocomplete="off"/>
                 </label>
               </div>
             </div>
           </section>

           <section>
            <div class="row">
              <label class="label col col-4">手機</label>
              <div class="col col-8">
                <label class="input">
                  <i class="icon-append icon-lock"></i>
                  <input name="phone" type="text" placeholder="電話號碼" autocomplete="off"/>
                </label>
              </div>
            </div>
          </section>
        </fieldset>
        <footer>
          <div style="text-align:center !important">
            <button type="submit" id="regis" value="提交"class=" button">提交</button>
          </div>
        </footer>
        </form>
      </section>
    </div>
  </body>
</html>
