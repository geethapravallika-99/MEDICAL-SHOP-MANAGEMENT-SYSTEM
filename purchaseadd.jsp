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
			<h2>DESIGNED BY DEEPTHI.T</h2>
		</div>
		<div id="headimg">&nbsp;</div>
	</div>
	<div id="topnavi">
		<div class="spacing1">
			<ul>
				<li><a href="adminhome.jsp" title="item">HOME</a></li>
                                <li class="selected"><a href="purchaseadd.jsp">Add Record</a></li>
				<li><a href="medcl-delet.jsp">Delete Record</a></li>
				<li><a href="#">Modify Records</a></li>
				<li><<a href="medcl-view.jsp">View Records</a></li>
				
			</ul>
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
			<ul>
				
			<li class="selected"><a href="medical-details.jsp">Medical Details**</a></li>
			<li><a href="medicin-details.jsp">Medicine Detalis</a></li>
			<li><a href="purchasedetails.jsp">Purchase Details</a></li>
			<li><a href="stock-details.jsp">Stock Details</a></li>
			<li><a href="registration.html">Sales Details</a></li>
                        <li><a href="index.jsp">Expiry Details</a></li>
			<li><a href="ownerlogin.html">Recorder Status</a></li>
			<li><a href="userlogin.html">Suppliers</a></li>
			<li><a href="adminlogin.html">Suppliers Bill Details</a></li>
			<li><a href="cloudserver.html">Customer Bill Details</a></li>
                        <li><a href="cloudserver.html">Logout</a></li>

			</ul>
		</div>
		<div id="content">
			<h1>Medical-Details</h1>
			
            <form name="f2"  action="purchasel-add-act.jsp" method="post" style="color: black">
    <br>   <center>   <ol>
              <li>
                <label for="type">Type</label>
                <input id="type" name="type" class="text" required='' />
              </li>
             
              <li>
                <label for="medicinename">Medicine Name</label>
                <input id="medicinename" name="medicinename" class="text" required=''/>
              </li>
              <li>
                <label for="companyname">Company Name</label>
                <input type="text" id="companyname" name="companyname" class="text" required=''/>
              </li>
              <li>
                <label for="suppliername">Supplier Name</label>
                <input type="text" id="suppliername" name="suppliername" class="text" required=''/>
              <li>
                <label for="date">Date</label>
                <input type="date" id="date" name="date" class="text" required=''/>
              </li>
                <li>
                <label for="netwt">Net wt</label>
                <input type="text" id="netwt" name="netwt" class="text" required=''/>
              <li>
                <label for="quantity">Quantity</label>
                <input type="text" id="quantity" name="quantity" class="text" required=''/>
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
