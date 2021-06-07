<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="style/css/style.css">
<link rel="stylesheet" href="style/css/micromodal.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	charset="utf-8"></script>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("alogin.jsp");
		}
	%>
	<input type="checkbox" id="check">
	<!--header area start-->
	<header> <label for="check"> <i class="fas fa-bars"
		id="sidebar_btn"></i>
	</label>
	<div class="left_area">
		<h3>
			Admin <span>Dashboard</span>
		</h3>
	</div>
	<div class="right_area">
		<a href="Alogout" class="logout_btn">Logout</a>
	</div>
	</header>
	<!--header area end-->
	<!--mobile navigation bar start-->
	<div class="mobile_nav">
		<div class="nav_bar">
			<img src="style/img/1.png" class="mobile_profile_image" alt="">
			<i class="fa fa-bars nav_btn"></i>
		</div>
		<div class="mobile_nav_items">
			<a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
			<a href="#"><i class="fas fa-cogs"></i><span>Components</span></a> <a
				href="#"><i class="fas fa-table"></i><span>Tables</span></a> <a
				href="#"><i class="fas fa-th"></i><span>Forms</span></a> 
			<a href="#"><i class="fas fa-info-circle"></i><span>About</span></a> <a href="#"><i
				class="fas fa-sliders-h"></i><span>Settings</span></a>
		</div>
	</div>
	<!--mobile navigation bar end-->
	<!--sidebar start-->
	<div class="sidebar">
		<div class="profile_info">
			<img src="style/img/admin.png" class="profile_image" alt="">
			<h4>${username}</h4>
		</div>
		<a href="#" class="mb20"
			onclick="show_container('dashboard-container')"><i
			class="fas fa-desktop"></i><span>Dashboard</span></a> <a href="#"
			class="mb20" onclick="show_container('btech-container')"><i
			class="fas fa-th"></i><span>B.Tech</span></a> <a href="#" class="mb20"
			onclick="show_container('mtech-container')"><i class="fas fa-th"></i><span>M.Tech</span></a>
		<a href="#" class="mb20" onclick="show_container('bca-container')"><i
			class="fas fa-th"></i><span>BCA</span></a> <a href="#" class="mb20"
			onclick="show_container('mca-container')"><i class="fas fa-th"></i><span>MCA</span></a>
		<a href="#" class="mb20" onclick="show_container('contact-container')"><i
			class="fas fa-sliders-h"></i><span>Contact US</span></a>
	</div>
	<!--sidebar end-->

	<div class="content">
		<%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%
			String driverName = "com.mysql.cj.jdbc.Driver";
			String connectionUrl = "jdbc:mysql://localhost:3306/";
			String dbName = "userdb";
			String userId = "root";
			String password = "";

			try {
				Class.forName(driverName);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}

			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>

		<div class="card databox" id="dashboard-container">
			
				<h1 class="center">Card History</h1>
			<table id="table" align="centre">
				<thead>
					<tr>
						<th>Name</th>
						<th>Gender</th>
						<th>Email</th>
						<th>CGPA</th>
						<th>tenth</th>
						<th>twelveth</th>
					</tr>
				</thead>
				<tbody id="tbody">


					<%
						try {
							connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
							statement = connection.createStatement();
							String sql = "SELECT * FROM userdb.register where cgpa>=9";

							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
					%>
					<tr bgcolor="#f1f1c1">

						<td
							onclick="showModalUser('<%=resultSet.getString("name")%>','<%=resultSet.getString("Gender")%>','<%=resultSet.getString("email")%>','<%=resultSet.getString("cgpa")%>','<%=resultSet.getString("tenth")%>','<%=resultSet.getString("twelveth")%>')"><%=resultSet.getString("name")%></td>
						<td><%=resultSet.getString("Gender")%></td>
						<td><%=resultSet.getString("email")%></td>
						<td><%=resultSet.getString("cgpa")%></td>
						<td><%=resultSet.getString("tenth")%></td>
						<td><%=resultSet.getString("twelveth")%></td>

					</tr>


					<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

				</tbody>
			</table>

		</div>

			<div class="card databox" id="mca-container">

			<h2 align="center" style=color:White;>
				<font><strong>MCA Candidates</strong></font>
			</h2>
			<table align="center" cellpadding="5" cellspacing="1" border="1">
				<tr bgcolor="#f1f1c1">
					<td><b>Email</b></td>
					<td><b>Tenth_marks</b></td>
					<td><b>Twelfth_marks</b></td>
					<td><b>Postgrad_course</b></td>
					<td><b>Postgrad_marks</b></td>


				</tr>
				<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql = "select * from userdb.candidate_resume where postgrad_course='MCA'";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<tr bgcolor="#f1f1c1">

					<td
						onclick="showModalUser('<%=resultSet.getString("email")%>','<%=resultSet.getString("tenth_marks")%>','<%=resultSet.getString("twelfth_marks")%>','<%=resultSet.getString("grad_course")%>','<%=resultSet.getString("grad_marks")%>','<%=resultSet.getString("postgrad_course")%>','<%=resultSet.getString("postgrad_marks")%>')"><%=resultSet.getString("email")%></td>
					<td><%=resultSet.getString("tenth_marks")%></td>
					<td><%=resultSet.getString("twelfth_marks")%></td>
					<td><%=resultSet.getString("postgrad_course")%></td>
					<td><%=resultSet.getString("postgrad_marks")%></td>


				</tr>

				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

			</table>
		</div>
		<div class="card databox" id="btech-container">
			<h2 align="center" style=color:White;>
				<font><strong>B.Tech Candidates</strong></font>
			</h2>
			<table align="center" cellpadding="5" cellspacing="1" border="1">

				<tr bgcolor="#f1f1c1">
					<td><b>Email</b></td>
					<td><b>Tenth_marks</b></td>
					<td><b>Twelfth_marks</b></td>
					<td><b>Grad_course</b></td>
					<td><b>Grad_marks</b></td>
					

				</tr>
				<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql = "select * from userdb.candidate_resume where grad_course='Btech'";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<tr bgcolor="#f1f1c1">

					<td
						onclick="showModalUser3('<%=resultSet.getString("email")%>','<%=resultSet.getString("tenth_marks")%>','<%=resultSet.getString("twelfth_marks")%>','<%=resultSet.getString("grad_course")%>','<%=resultSet.getString("grad_marks")%>')"><%=resultSet.getString("email")%></td>
					<td><%=resultSet.getString("tenth_marks")%></td>
					<td><%=resultSet.getString("twelfth_marks")%></td>
					<td><%=resultSet.getString("grad_course")%></td>
					<td><%=resultSet.getString("grad_marks")%></td>
					
				</tr>

				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

			</table>

		</div>
		<div class="card databox" id="mtech-container">
			<h2 align="center" style=color:White;>
				<font><strong>M.Tech Candidates</strong></font>
			</h2>
			<table align="center" cellpadding="5" cellspacing="1" border="1">

				<tr bgcolor="#f1f1c1">
					<td><b>Email</b></td>
					<td><b>Tenth_marks</b></td>
					<td><b>Twelfth_marks</b></td>
					<td><b>Postgrad_course</b></td>
					<td><b>Postgrad_marks</b></td>
				</tr>
				<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql = "select * from userdb.candidate_resume where postgrad_course='Mtech'";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<tr bgcolor="#f1f1c1">

					<td
						onclick="showModalUser('<%=resultSet.getString("email")%>','<%=resultSet.getString("tenth_marks")%>','<%=resultSet.getString("twelfth_marks")%>','<%=resultSet.getString("grad_course")%>','<%=resultSet.getString("grad_marks")%>','<%=resultSet.getString("postgrad_course")%>','<%=resultSet.getString("postgrad_marks")%>')"><%=resultSet.getString("email")%></td>
					<td><%=resultSet.getString("tenth_marks")%></td>
					<td><%=resultSet.getString("twelfth_marks")%></td>
					<td><%=resultSet.getString("postgrad_course")%></td>
					<td><%=resultSet.getString("postgrad_marks")%></td>

				</tr>

				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

			</table>

		</div>
		<div class="card databox" id="bca-container">
			<h2 align="center" style="color:White;">
				<font><strong>BCA Candidates</strong></font>
			</h2>
			<table align="center" cellpadding="5" cellspacing="1" border="1">
				<tr bgcolor="#f1f1c1">
					<td><b>Email</b></td>
					<td><b>Tenth_marks</b></td>
					<td><b>Twelfth_marks</b></td>
					<td><b>Grad_course</b></td>
					<td><b>Grad_marks</b></td>
					
				</tr>
				<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql = "select * from userdb.candidate_resume where grad_course='BCA'";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<tr bgcolor="#f1f1c1">

					<td
						onclick="showModalUser3('<%=resultSet.getString("email")%>','<%=resultSet.getString("tenth_marks")%>','<%=resultSet.getString("twelfth_marks")%>','<%=resultSet.getString("grad_course")%>','<%=resultSet.getString("grad_marks")%>')"><%=resultSet.getString("email")%></td>
					<td><%=resultSet.getString("tenth_marks")%></td>
					<td><%=resultSet.getString("twelfth_marks")%></td>
					<td><%=resultSet.getString("grad_course")%></td>
					<td><%=resultSet.getString("grad_marks")%></td>
					
				</tr>

				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

			</table>

		</div>

		<div class="card databox" id="contact-container">
			<h2 align="center" style=color:White;>

				<font><strong>Contact us data from database</strong></font>
			</h2>
			<table align="center" cellpadding="5" cellspacing="1" border="1">
				<tr bgcolor="#f1f1c1">
					<td><b>Name</b></td>
					<td><b>Email</b></td>
					<td><b>Message</b></td>

				</tr>
				<%
					try {
						connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
						statement = connection.createStatement();
						String sql = "select * from userdb.contact;";

						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<tr bgcolor="#f1f1c1">

					<td
						onclick="showModalUser2('<%=resultSet.getString("name")%>','<%=resultSet.getString("email")%>','<%=resultSet.getString("message")%>')"><%=resultSet.getString("name")%></td>
					<td><%=resultSet.getString("email")%></td>
					<td><%=resultSet.getString("message")%></td>
				</tr>

				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>

			</table>

		</div>


		<div class="modal micromodal-slide" id="modal-users"
			aria-hidden="true">
			<div class="modal__overlay" tabindex="-1" data-micromodal-close>
				<div class="modal__container" role="dialog" aria-modal="true"
					aria-labelledby="modal-1-title">
					<header class="modal__header">
					<h2 class="modal__title" id="modal-1-title">Candidate Detail</h2>
					<button class="modal__close" aria-label="Close modal"
						data-micromodal-close></button>
					</header>
					<main class="modal__content" id="modal-1-content">
					<p>
						<b>email : </b><span id="user_detail_email"></span>
					</p>
					<p>
						<b>tenth_marks : </b><span id="user_detail_tenth_marks"></span>
					</p>
					<p>
						<b>twelfth_marks : </b><span id="user_detail_twelfth_marks"></span>
					</p>
					<p>
						<b>grad_course : </b><span id="user_detail_grad_course"></span>
					</p>
					<p>
						<b>grad_marks : </b><span id="user_detail_grad_marks"></span>
					</p>
					<p>
						<b>postgrad_course : </b><span id="user_detail_postgrad_course"></span>
					</p>
					<p>
						<b>postgrad_marks : </b><span id="user_detail_postgrad_marks"></span>
					</p>
					</main>
					<hr>
					<textarea id="user_detail_note" cols="75" rows="10"
						placeholder="Enter Note"></textarea>
					<footer class="modal__footer">
					<button class="modal__btn modal__btn-primary" onclick="send_mail()">Send
						Mail</button>
					<button class="modal__btn" data-micromodal-close
						aria-label="Close this dialog window">Close</button>
					</footer>
				</div>
			</div>
		</div>

		<div class="modal micromodal-slide" id="modal-users2"
			aria-hidden="true">
			<div class="modal__overlay" tabindex="-1" data-micromodal-close>
				<div class="modal__container" role="dialog" aria-modal="true"
					aria-labelledby="modal-1-title">
					<header class="modal__header">
					<h2 class="modal__title" id="modal-1-title">Candidate Detail</h2>
					<button class="modal__close" aria-label="Close modal"
						data-micromodal-close></button>
					</header>
					<main class="modal__content" id="modal-1-content">
					<p>
						<b>Name : </b><span id="user_detail_cname"></span>
					</p>
					<p>
						<b>Email : </b><span id="user_detail_cemail"></span>
					</p>
					<p>
						<b>Message : </b><span id="user_detail_cmessage"></span>
					</p>
					</main>
					<hr>
					<textarea id="user_detail_note" cols="75" rows="10"
						placeholder="Enter Note"></textarea>
					<footer class="modal__footer">
					<button class="modal__btn modal__btn-primary" onclick="send_mail()">Send
						Mail</button>
					<button class="modal__btn" data-micromodal-close
						aria-label="Close this dialog window">Close</button>
					</footer>
				</div>
			</div>
		</div>
		
				<div class="modal micromodal-slide" id="modal-users3"
			aria-hidden="true">
			<div class="modal__overlay" tabindex="-1" data-micromodal-close>
				<div class="modal__container" role="dialog" aria-modal="true"
					aria-labelledby="modal-1-title">
					<header class="modal__header">
					<h2 class="modal__title" id="modal-1-title">Candidate Detail</h2>
					<button class="modal__close" aria-label="Close modal"
						data-micromodal-close></button>
					</header>
					<main class="modal__content" id="modal-1-content">
					<p>
						<b>email : </b><span id="user_detail_gemail"></span>
					</p>
					<p>
						<b>tenth_marks : </b><span id="user_detail_gtenth_marks"></span>
					</p>
					<p>
						<b>twelfth_marks : </b><span id="user_detail_gtwelfth_marks"></span>
					</p>
					<p>
						<b>grad_course : </b><span id="user_detail_ggrad_course"></span>
					</p>
					<p>
						<b>grad_marks : </b><span id="user_detail_ggrad_marks"></span>
					</p>
					</main>
					<hr>
					<textarea id="user_detail_note" cols="75" rows="10"
						placeholder="Enter Note"></textarea>
					<footer class="modal__footer">
					<button class="modal__btn modal__btn-primary" onclick="send_mail()">Send
						Mail</button>
					<button class="modal__btn" data-micromodal-close
						aria-label="Close this dialog window">Close</button>
					</footer>
				</div>
			</div>
		</div>
</div>



		<%--------------------------------------------------------------------Java Script Code------------------------------------------------------------%>

		<script src="https://unpkg.com/micromodal/dist/micromodal.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {

				hide_container();
				MicroModal.init();
				$('.nav_btn').click(function() {
					$('.mobile_nav_items').toggleClass('active');
				});
			});

			function show_container(container_id) {
				let all_containers = document.getElementsByClassName('databox');
				for (let i = 0; i < all_containers.length; i++) {
					all_containers[i].style.display = "none";
				}

				let container_to_show = document.getElementById(container_id);
				container_to_show.style.display = "block";
			}

			function hide_container() {
				let all_containers = document.getElementsByClassName('databox');
				for (let i = 0; i < all_containers.length; i++) {
					all_containers[i].style.display = "none";
				}
			}
			
			function showModalUser(email, tenth_marks, twelfth_marks, grad_course, grad_marks, postgrad_course, postgrad_marks) {
			    let uemail = document.getElementById('user_detail_email');
			    let utenth_marks = document.getElementById('user_detail_tenth_marks');
			    let utwelfth_marks = document.getElementById('user_detail_twelfth_marks');
			    let ugrad_course = document.getElementById('user_detail_grad_course');
			    let ugrad_marks = document.getElementById('user_detail_grad_marks');
			    let upostgrad_course = document.getElementById('user_detail_postgrad_course');
			    let upostgrad_marks = document.getElementById('user_detail_postgrad_marks');
			 
			    uemail.innerHTML = email;
			    utenth_marks.innerHTML = tenth_marks;
			    utwelfth_marks.innerHTML = twelfth_marks;
			    ugrad_course.innerHTML = grad_course;
			    ugrad_marks.innerHTML = grad_marks;
			    upostgrad_course.innerHTML = postgrad_course;
			    upostgrad_marks.innerHTML = postgrad_marks;
				 
			 
			    MicroModal.show('modal-users');
			}
			
			function showModalUser3(email, tenth_marks, twelfth_marks, grad_course, grad_marks) {
			    let vemail = document.getElementById('user_detail_gemail');
			    let vtenth_marks = document.getElementById('user_detail_gtenth_marks');
			    let vtwelfth_marks = document.getElementById('user_detail_gtwelfth_marks');
			    let vgrad_course = document.getElementById('user_detail_ggrad_course');
			    let vgrad_marks = document.getElementById('user_detail_ggrad_marks');
			 
			    vemail.innerHTML = email;
			    vtenth_marks.innerHTML = tenth_marks;
			    vtwelfth_marks.innerHTML = twelfth_marks;
			    vgrad_course.innerHTML = grad_course;
			    vgrad_marks.innerHTML = grad_marks;
				 
			 
			    MicroModal.show('modal-users3');
			}
			
			
			function showModalUser2(name, email, message) {
			    let uname = document.getElementById('user_detail_cname');
			    let uemail = document.getElementById('user_detail_cemail');
			    let umessage = document.getElementById('user_detail_cmessage');
			 
			    uname.innerHTML = name;
			    uemail.innerHTML = email;
			    umessage.innerHTML = message;

			 
			    MicroModal.show('modal-users2');
			}
			
			function send_mail() {
			    let email = document.getElementById('user_detail_email').innerHTML;
			    let note = document.getElementById('user_detail_note').innerHTML;
			 
			    axios.get('/RSD/Sendmail', { params: { "email": email, "note": note } })
			        .then((res) => {
			            MicroModal.close('modal-users');
			            swal("Success!", "Mail sent!", "success");
			        })
			        .catch((err) => {
			            MicroModal.close('modal-users');
			            swal("Error!", "Something went wrong!", "error");
			        })
			}
			
		</script>
</body>
</html>