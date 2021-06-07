<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resume Filling Form </title>
	
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ include file = "header.jsp" %>
</head>

<body>
<%-- 	Welcome ${username} --%>
   <form class="form-horizontal"  method="POST" action="ResumeDB">
    <div class="container">    
              <div id="signupbox" style=" margin-top:20px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title">Personal Details</div>
                               </div>  
                        <div class="panel-body" >


						<div class="form-group">
                                    <label for="email" class="col-md-3 control-label">User ID</label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email Address" required>
                                    </div>
                                </div>
                                
                               </div>     
                                
                         </div>
<!--                     </div> -->
         </div> 	
         </div>
         
<!--          Education -->
         
         <div class="container">    
              <div id="signupbox" style=" margin-top:30px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="panel-title">Education / Qualification Details</div>
                               </div>  
                        <div class="panel-body" >
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">10th Marks</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="tenth" placeholder="Marks in CGPA" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">12th Marks</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="twelfth" placeholder="Marks in CGPA" required>
                                    </div>
                                </div>
                                
         					<div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Graduation Course</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="graduateCourse" placeholder="Course done in Graduation" required>
                                    </div>
                                </div>
                                	
                               <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Graduation Marks</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="graduateMarks" placeholder="Marks in CGPA" required>
                                    </div>
                                </div>
                                
         					<div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">PostGraduation Course</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="PostgraduateCourse" placeholder="Course done in PostGraduation" required>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">PostGraduation Marks</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="PostgraduateMarks" placeholder="Marks in CGPA" required>
                                    </div>
                                </div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Designation</label>
							<div class="col-md-9">
								<input type="text" class="form-control" name="designation" placeholder="Designation">
							</div>
						</div>
					</div>
                    </div>
         	</div> 	
         </div>
         
        <!-- Experience and Internship -->
         
 <div class="container">    
              <div id="signupbox" style=" margin-top:30px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="panel-title">Experience / Internship Details</div>
                               </div>  
                        <div class="panel-body" >
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Experience</label>
                                    <div class="col-md-9">
                                        <input type="number" class="form-control" name="experience" placeholder="Experience in Years" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label"> Internship </label>
                                    <div class="col-md-9">
                                        <textarea class="form-control" rows="5" name="intern" placeholder="Internship Details (Optional)"></textarea>
                                    </div>
                                </div> 

                         </div>
                    </div>
         	</div> 	
         </div>
         
               
<!--          Projects  -->
         
 <div class="container">    
              <div id="signupbox" style=" margin-top:30px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Projects Details</div>
                               </div>  
                        <div class="panel-body" >
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label"> Project Details </label>
                                    <div class="col-md-9">
                                        <textarea class="form-control" rows="5" name="project" placeholder="Project Details "></textarea>
                                    </div>
                                </div> 

                         </div>
                    </div>
         	</div> 	
         </div>
         
      <div class="container">    
              <div id="signupbox" style=" margin-top:30px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <div class="panel-title">Skills (Technology / Functional )</div>
                               </div>  
                        <div class="panel-body" >
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Technologies</label>
                                    <div class="col-md-9">
                                        <textarea class="form-control" rows="5" name="skills" placeholder="Skills or Technologies studied"></textarea>
                                    </div>
                                </div> 

                         </div>
                    </div>
         	</div> 	
         </div>
         
       <div class="container">    
              <div id="signupbox" style=" margin-top:30px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <div class="panel-title">Extra - Curricular </div>
                               </div>  
                        <div class="panel-body" >
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Curricular Activities</label>
                                    <div class="col-md-9">
                                        <textarea class="form-control" rows="5" name="curricular" placeholder="Interested Hobbies or Activities"></textarea>
                                    </div>
                                </div> 
							
                               
                         </div>
                         
                    </div>

				<div class="form-group">
					<div class="col-md-offset-3 col-md-9">
						<button  type="submit" class="btn btn-primary" style="margin-left:65px;">
							<i class="icon-hand-right"></i>Submit
						</button>
						<br><br>
					</div>
				</div>
			</div> 	
         </div>     
         </form>
         
<script type="text/javascript">
		$(window).bind("pageshow", function() {
		var form = $('form');
		// let the browser natively reset defaults
		form[0].reset();
	});
	    function preventBack() { window.history.forward(); }
	    setTimeout("preventBack()", 0);
	    window.onunload = function () { null };
	</script>
	
	</body>


</html>

               