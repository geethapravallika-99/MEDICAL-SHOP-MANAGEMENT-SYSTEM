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
				<li><a href="adminhome.jsp" title="item">HOME</a></li>
				<li class="selected"><a href="medcin-add.jsp">Add Record</a></li>
				<li><a href="medcin-delet.jsp">Delete Record</a></li>
				<li><a href="medicin-update.jsp">Modify Records</a></li>
				<li><a href="medcin-view.jsp">View Records</a></li>
				
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
			<h1>Medicine-Details</h1>
            <form name="f2"  action="medicine-add-act.jsp" method="post" style="color: black">
            <li>
                <label for="email">Type (required)</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select class="inputss" required="" name="gen" >
                            <option value="Medicine">Medicine</option>
                            <option value="Injections">Injections</option>
                            <option value="Drugs">Drugs</option>
                        </select>&nbsp;&nbsp;&nbsp;
                        </li>
              <li>
                  <label for="email">Name (required)</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="email" name="name" class="text" required=''/>
              </li>
              <li>
                  <label for="dob">Company (required)</label>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" id="dob" name="company" class="text" required=''/>
              </li>
              <li>
                  <label for="dob">Net wt (required)</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" id="dob" name="netwt" class="text" required=''/>
              <li>
                  <label for="dob">Reorder(required)</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" id="dob" name="reorder" class="text" required=''/>
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
