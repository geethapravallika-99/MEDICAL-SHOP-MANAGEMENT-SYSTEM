<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MEDICAL SHOP</title>
<style type="text/css" media="all">
	@import "global.css";
</style>

</head>
<script>
    function validateform(){  
var username=document.myform.username.value;  
var pass=document.myform.password.value;

 
  
if (document.myform.username.value == "") {
        alert("Enter a username");
        document.myform.username.focus();
        return false;
    }
    if (!/^[a-zA-Z]*$/g.test(document.myform.username.value)) {
        alert("Please use only characters for username");
        
        document.myform.username.focus();
        return false;
    }
else if(pass.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }
  

    }
    </script>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logobox">
			<h1>  MEDICAL SHOP</h1>
			<h2></h2>
		</div>
		<div id="headimg">&nbsp;</div>
	</div>
	<div id="topnavi">
		<div class="spacing1">
			<ul>
				<li><a href="#" title="item">HOME</a></li>
				<li><a href="adminlogin.jsp" title="item">ADMIN</a></li>
				<li class="selected"><a href="user-login.jsp" title="item">USER</a></li>
				<li><a href="#" title="item">ABOUT US</a></li>
				
				
			</ul>
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
			<ul>
				<li><a class="selected" href="#" title="item">&#xBB; Item</a></li>
				<li><a href="#" title="item">&#xBB; Item</a></li>
				<li><a href="#" title="item">&#xBB; Item</a></li>
				<li><a href="#" title="item">&#xBB; Item</a></li>
				<li><a href="#" title="item">&#xBB; Item</a></li>
				<li><a href="#" title="item">&#xBB; Item</a></li>
				<li><a href="#" title="item">&#xBB; Item</a></li>
			</ul>
		</div>
		<div id="content">
			<h2 class="introhead">User Registration </h2></center>
			
</body>		
<br><br><br><br>  
            <form name="myform" id="loginForm" action="user-reg-act.jsp" method="post"  enctype="multipart/form-data" onsubmit="return validateform()" >
    <br>   <center>   <ol>
              <li>
                <label for="name">User Name</label>
                <input  name="username" class="text" >
              </li>
             
              <li>
                <label for="password">Password (required)</label>
                <input type="password" name="password" class="text" >
              </li>
              <li>
                <label for="email">Email (required)</label>
                <input type="email"  name="email" class="text" >
              </li>
              <li>
                <label for="dob">DOB (required)</label>
                <input type="date"  name="DOB" class="text" >
              <li>
                <label for="address">Address (required)</label>
                <input type="text"  name="address" class="text" >
              </li>
                           

             
              <br>
              <input type="hidden" value="reg" name="saction" />
              <input type="submit" value="Submit" class="button" style="margin-left: 80px"/>
                            <input type="reset" value="Reset" class="button"/>
      </form>  
                    </center><br />
                </div>
            </div>
      
              
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer style2">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center class="style2"></div>
</body>
</html>
