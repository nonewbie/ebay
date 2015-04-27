<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("GBK"); %>

<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>Login Page | Amaze UI Example</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="assets/i/favicon.png">
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <style>
  
    
            
          	
  
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
    .header p {
      font-size: 14px;
    }
  </style>
  <script type="text/JavaScript">
          		function check(){
          			var phone_check=document.regist_check.phone.value;
          			var password_check=document.regist_check.password.value;
          			var repassword_check=document.regist_check.repassword.value;
          			var username_check=document.regist_check.user_name.value;
          			
          		 
          		 	if(!username_check.match("\\w{4,15}"))
          		 		alert("name error");
          		 	
       				
          		 	
          		 	else if(!password_check.match("^[a-zA-Z]\\w{5,17}$"))
          		 		alert("pass word not accept");
          		 	
          		 		
          		
          		 	else if (password_check != repassword_check)
          		 		alert("password error");
          		 	
          				
          		 	
          		 	else (!phone_check.match("((\\d{11})|^((\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1})|(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1}))$)?"))	
          		 			alert("phone error");
          		 	

          			
          		}
     </script>
  
</head>
<body>
<div class="header">
  <div class="am-g">
    <h1>西电易物</h1>
    <p>Secondhand market with your hand<br/>您身边的交易二手平台</p>
  </div>
  <hr />
</div>
<div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户注册</strong> / <small>Personal information</small></div>
    </div>

    <hr/>

    <div class="am-g">

      <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
        <div class="am-panel am-panel-default">
          <div class="am-panel-bd">
            <div class="am-g">
              <div class="am-u-md-4">
                <img class="am-img-circle am-img-thumbnail" src="http://amui.qiniudn.com/bw-2014-06-19.jpg?imageView/1/w/1000/h/1000/q/80" alt=""/>
              </div>
              <div class="am-u-md-8">
                <p>你可以使用<a href="#">gravatar.com</a>提供的头像或者使用本地上传头像。 </p>
                <form class="am-form">
                  <div class="am-form-group">
                    <input type="file" id="user-pic">
                    <p class="am-form-help">请选择要上传的文件...</p>
                    <button type="button" class="am-btn am-btn-primary am-btn-xs">保存</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>


      </div>

      <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
        <form class="am-form am-form-horizontal" name="regist_check" action="regist_check.jsp" mathod="post">
          <div class="am-form-group">
            <label for="user_name" class="am-u-sm-3 am-form-label">用户名 / UserName *</label>
            <div class="am-u-sm-9">
              <input type="text" name="user_name" id="user-name" value="" required="required" placeholder="用户名 / UserName">
              <small>请输入用户名</small>
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件 / Email *</label>
            <div class="am-u-sm-9">
              <input type="email" name="user_email" id="user-email" required="required" placeholder="输入你的电子邮件 / Email">
              <small>邮箱你懂得...</small>
            </div>
          </div>
          
          <div class="am-form-group—2">
            <label for="password" class="am-u-sm-3 am-form-label">密码 / PassWord *</label>
            <div class="am-u-sm-9">
              <input type="password" name="password" required="required" value="" id="password" >
              <small>密码你懂得...</small>
            </div>
          <div class="am-form-group—2">
            <label for="password" class="am-u-sm-3 am-form-label">重新输入密码 / PassWord *</label>
            <div class="am-u-sm-9">
              <input type="password" name="repassword" required="required"   value="" id="password" >
              <small>密码你懂得...</small>
            </div>
          </div>
          
          
					<br /><br /><br /><br /><br />
          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">电话 / Telephone</label>
            <div class="am-u-sm-9">
              <input type="tel" name="phone"  id="user-phone"  placeholder="输入你的电话号码 / Telephone">
            </div>
          </div>
        
          	
<!-- QQ和微博
          <div class="am-form-group">
            <label for="user-QQ" class="am-u-sm-3 am-form-label">QQ</label>
            <div class="am-u-sm-9">
              <input type="email" id="user-QQ" placeholder="输入你的QQ号码">
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-weibo" class="am-u-sm-3 am-form-label">微博 / Twitter</label>
            <div class="am-u-sm-9">
              <input type="email" id="user-weibo" placeholder="输入你的微博 / Twitter">
            </div>
          </div>
-->        
          <div class="am-form-group">
            <label for="sex" class="am-u-sm-3 am-form-label">性别 / Sex</label>
            <div class="am-u-sm-9">
              <input type="radio" name="user_sex" value="boy"  CHECKED>男
              <input type="radio" name="user_sex" value="girl"  >女<br>
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-grade" class="am-u-sm-3 am-form-label">年级 / Grade</label>
            <div class="am-u-sm-9">
              <select name="grade">
									<option value= "1" CHECKED>大一</option>
									<option value="2">大二</option>
									<option value="3">大三</option>
									<option value="4">大四</option>
									<option value="5">研一</option>
									<option value="6">研二</option>
									<option value="7">研三</option>
									<option value="8">博一</option>
								</select>
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-grade" class="am-u-sm-3 am-form-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生日 / BirthDay</label>
            <div class="am-u-sm-9">
              <select name="birth_year">
								<script language="javascript">
						
					
						var num=80;
						var year=1931;
						for(i=0;i<num;i++)
							{
								year_now=i+year
								document.write("<option value=year+i>"+year_now+"</option>");
							}
						
									</script>
									</select>年
									<select name="birth_month">
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06" CHECKED>6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									</select>月
									<select name="birth_day">
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06" CHECKED>6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
							  	    <option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
									
								</select>日<br>
            </div>
          </div>
          
			<input type=date name ="birth" />
		
          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3">
              <button type="submit"  class="am-btn am-btn-primary">注册</button>
              &nbsp;&nbsp;
              <button type="reset" class="am-btn am-btn-primary">重置</button>
            </div>
          </div>
          
        </form>
        
      </div>
    </div>
  </div>
  
  <!-- content end -->
      <p>? 2015 西电</p>

</body>
</html>