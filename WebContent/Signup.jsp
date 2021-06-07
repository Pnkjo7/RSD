<!DOCTYPE html>
<html>	
	<head>
	
	<title>User Registeration</title>
	
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ include file = "header.jsp" %>
</head>

<body>

    <div class="container">    
              <div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="Signin.jsp">Sign In</a></div>
                        </div>  
                        <div class="panel-body" >
                        
                            <form class="form-horizontal"  method="POST" action="SignupDB">
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="First Name" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name" required>
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Address </label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="address" placeholder="House Address" required>
                                    </div>
                                </div>
                                
                                
<!--                                 <div class="form-group"> -->
<!--                                     <label for="email" class="col-md-3 control-label">Gender</label> -->
<!--                                     <div class="col-md-9"> -->
<!--                                         <input type="text" class="form-control" name="email" placeholder="Gender"> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                
<!--                                 <div class="form-group"> -->
<!--                                     <label for="email" class="col-md-3 control-label">Designation</label> -->
<!--                                     <div class="col-md-9"> -->
<!--                                         <input type="text" class="form-control" name="email" placeholder="Designation"> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                
<!--                                 <div class="form-group"> -->
<!--                                     <label for="email" class="col-md-3 control-label">Experience</label> -->
<!--                                     <div class="col-md-9"> -->
<!--                                         <input type="number" class="form-control" name="email" placeholder="Experience in years"> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Phone Number</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="phone" placeholder="Phone Number" required>
                                    </div>
                                </div>
                                
                                
<!--                                 <div class="form-group"> -->
<!--                                     <label for="email" class="col-md-3 control-label">CGPA</label> -->
<!--                                     <div class="col-md-9"> -->
<!--                                         <input type="number" class="form-control" name="email" placeholder="Marks Obtained in cgpa"> -->
<!--                                     </div> -->
<!--                                 </div> -->
                                
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                                    </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" id="pass" class="form-control" name="pass" onkeyup='check();' placeholder="Password" required>
                                    </div>
                                </div>
                                 
								
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Re-type Password</label>
                                    <div class="col-md-9">
                                        <input type="password" id="repass" class="form-control" name="repass" onkeyup='check();'  placeholder="Re-Type Password" required>
                                    	<span id="check"></span>
                                    </div>
                                </div>
                                
                                    
                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i>Sign Up</button>
                                    </div>
                                </div>
                                
                                
                            </form>
                         </div>
                    </div>

         </div> 
    </div>
    
		
	</body>

<script type="text/javascript">

document.getElementById('btn-signup').disabled = true;

function check(){
	var pass = document.getElementById("pass").value;
	var repass = document.getElementById("repass").value;
	if(pass == repass){
	    document.getElementById('check').style.color = 'green';
		document.getElementById("check").innerHTML = "Password Matched";
		document.getElementById('btn-signup').disabled = false;
		
	}
	else {
	    document.getElementById('check').style.color = 'red';
		document.getElementById("check").innerHTML = " Password Not Matched";
	}
}
	$(window).bind("pageshow", function() {
		var form = $('form');
		// let the browser natively reset defaults
		form[0].reset();
	});

</script>

</html>
