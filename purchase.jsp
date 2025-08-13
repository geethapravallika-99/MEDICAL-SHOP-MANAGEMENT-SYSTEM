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
				<li><a href="#" title="item">ADMIN</a></li>
				<li class="selected"><a href="#" title="item">USER</a></li>
				<li><a href="#" title="item">ABOUT US</a></li>
				<li><a href="#" title="item">CONTACT US</a></li>
				
			</ul>
                    
			
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
		<ul>
				<li><a href="user-home.jsp" title="item">Home</a></li>
				<li><a href="viewstock.jsp" title="item">View Stock</a></li>
				<li><a href="viewmedicine.jsp" title="item">View Medicines</a></li>
                                <li class="selected"><a href="purchase.jsp" title="item">Purchase Medicines</a></li>
                                <li><a href="viewpurchasedmedicin.jsp" title="item">View Purchased Medicines</a></li>
				<li><a href="user-login.jsp" title="item">Logout</a></li>
				
			</ul>
		</div>
		<div id="content">
			<h1>Purchase-Details</h1>
			
            <form name="f2"  action="purchaseact.jsp" method="post" style="color: black">
    <br>   <center>  
                           
                <li>
                  <label for="medicinename">Medicine Type</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input id="mtype" name="mtype" class="text" required=''/>
                </li><br>
                <li>
                  <label for="companyname">Medicine Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                  <input type="text" id="mname" name="mname" class="text" required=''/>
                </li><br>
                <li>
                  <label for="suppliername">Company</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" id="company" name="company" class="text" required=''/>
                </li><br>
                <li>
                  <label for="quantity">Quantity</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" id="quantity" name="quantity" class="text" required=''/>
                </li><br>
                  <li>
                  <label for="quantity">Amount</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="text" id="amount" name="amount" class="text" required=''/>
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
