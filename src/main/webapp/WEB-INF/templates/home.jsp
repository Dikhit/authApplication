<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<section style="background-color: #eee;">
	  <div class="container py-5">
	    <div class="row">
	      <div class="col">
	        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
	          <ol class="breadcrumb mb-0">
	            <li class="breadcrumb-item">Home</li>
	          </ol>
	        </nav>
	      </div>
	    </div>
	
	    <div class="row">
	      <div class="col-lg-4">
	        <div class="card mb-4">
	          <div class="card-body text-center">
	            <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-chat/ava3.png" alt="avatar" class="rounded-circle img-fluid" style="width: 150px;">
	            <h5 class="my-3"> ${user.name} </h5>
	            <p class="text-muted mb-1">FSE</p>
	            <p class="text-muted mb-4">India </p>
	            <div class="d-flex justify-content-center mb-2">
	              <button type="button" class="btn btn-primary">Follow</button>
	              <button type="button" class="btn btn-outline-info ms-1">Message</button>
	            </div>
	          </div>
	          <br>
	          <br>
	        </div>
	        
	          
	      </div>
	      <div class="col-lg-8">
	        <div class="card mb-4">
	          <div class="card-body">
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">User ID</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0"> ${ user.id } </p>
	              </div>
	            </div>
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Email</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0"> ${ user.email }  </p>
	              </div>
	            </div>
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Mobile</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0"> ${user.phoneNumber } </p>
	              </div>
	            </div>
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Work</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0">(098) 765-4321</p>
	              </div>
	            </div>
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Address</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0"> ${user.address } </p>
	              </div>
	            </div>
	            
	            <hr>
	            <div class="row">
	              <div class="col-sm-3">
	                <p class="mb-0">Created At</p>
	              </div>
	              <div class="col-sm-9">
	                <p class="text-muted mb-0"> ${user.createdAt } </p>
	              </div>
	            </div>
	            
	          </div>
	        </div>
	        <div class="d-grid gap-2">
			  	<a href="/login" class="btn btn-danger my-2" type="button">LogOut</a>
			</div>
	      </div>
	    </div>
	  </div>
	</section>
</body>
</html>