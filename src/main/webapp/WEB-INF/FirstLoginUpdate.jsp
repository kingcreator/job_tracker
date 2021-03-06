<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang='en'>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" http-equiv="Content-Type" content="width=device-width,initial-scale=1" charset=ISO-8859-1>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="<c:url value='/resources/mythemes/css/firstLogin.css' />">
	<script type="text/javascript" src="<c:url value='/resources/scripts/jquery-3.1.1.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/resources/scripts/mask.js' />"></script>
	<script type="text/javascript">
	jQuery(function($){
		   $("#phoneNumber").mask("(999) 999-9999");
		});
	jQuery('.phoneNumber').keyup(function () {  
	    this.value = this.value.replace(/[^0-9\.]/g,''); 
	});
	</script>
<title>TechIT Registration</title>
</head>
<body>
	<div class="container">
	
		<div class="jumbotron">
			<h1 align=center>
				<small>TechIt!</small>
			</h1>
		</div>
		
		<div class="alert alert-info fade in">
 				<strong>Welcome!</strong>
 				It seems like this is either your first time logging in or there are some missing
 				information to your account! Please fill the missing fields below and confirm the 
 				existing ones. 
		</div>
		<div class="row" >
			<div class="col-sm-offset-2" >
				<form action="FirstLoginUpdate" method="post">
					 <div class="form-group col-xs-5 col-md-5" >
					    <label for="firstName">First Name <font color="red">*</font> </label>
					    <input type="text" class="form-control" name="firstName" value="${firstname}" >
					 </div>
					 
					  <div class="form-group col-xs-5 col-md-5">
					    <label for="lastName">Last Name <font color="red">*</font></label>
					    <input type="text" class="form-control" name="lastName" value="${lastname}">
					 </div>
					 <div class="form-group col-xs-10 col-md-10">
					 	<label for="email">Email <font color="red">*</font></label>
					    <input type="text" class="form-control" name="email" value="${email}">
					 </div>
					 
					 <div class="form-group col-xs-10 col-md-10">
					 	<label for="phoneNumber">Phone Number <font color="red">*</font></label>
					    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${phoneNumber}" >
					 </div>
					 <div class="form-group col-xs-10 col-md-10">
				 		<b>NOTE: <font color="red">*</font> means that the field is required.</b>
				 	</div>
					 	<button class="btn btn-lg btn-primary btn-block" name="FirstLoginUpdate"
							value="FirstLoginUpdate" type="submit">Confirm</button>

				</form>
			</div>
		</div>
	</div>


</body>
</html>