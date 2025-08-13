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
				<li class="selected"><a href="stock-add.jsp">Add Stock Details</a></li>
                                <li><a href="stock-delete.jsp">Delete Stock Details</a></li>
				<li><a href="stock-modfy.jsp">Modify Stock Details</a></li>
				<li><a href="stock-view.jsp">View Stock Details</a></li>
				
				
			</ul>
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
			<ul>
				
			<li class="selected"><a href="medical-details.jsp">Medical Details</a></li>
			<li><a href="medicin-details.jsp">Medicine Detalis</a></li>
			<li><a href="suppliermain.jsp">Supplier</a></li>
			<li><a href="stock-details.jsp">Stock Details</a></li>
                        <li><a href="index.html">Logout</a></li>
			</ul>
		</div>
		<div id="content">
			<h1>Stock-Details</h1>
            <form name="f2"  action="stock-add-act.jsp" method="post" style="color: black">
    <br>   <center>   
              <li>
                <label for="name">Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="name" name="name" class="text" required='' />
              </li>
             
              <li>
                <label for="Company">Company</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="Company" name="company" required class="text" required=''/>
              </li>
              <li>
                <label for="Quantity">Quantity</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="Quantity" id="Quantity" required name="quantity" class="text" required=''/>
              </li>
              <li>
                <label for="priceperitem">Price Per Item</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="priceperitem" id="priceperitem" required name="priceperitem" class="text" required=''/>
              <li>
                <label for="totalcost">Total Cost</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="totalcost" id="totalcost" required name="totalcost" class="text" required=''/>
              </li>
              <li>
                  <label for="mfgdate">Mfg Date</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="date" name="mfgdate" required class="text" required=''/>
              </li>
              <li>
                <label for="expirydate">Expiry Date</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="date" id="expirydate" required name="expirydate" class="text" required=''/>
              </li>
              <li>
                <label for="date">Date</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;
                <input type="date" id="date" required name="date" class="text" required=''/>
              <li>
                <label for="type">Type</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <input type="type" id="type" required name="type" class="text" required=''/>
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
