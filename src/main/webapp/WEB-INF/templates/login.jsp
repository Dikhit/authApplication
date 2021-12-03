<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LogIn</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
	
</head>
<body>
	<section class="vh-100" style="background-color: #508bfc;">
	  <div class="container py-5 h-100">
	    <div class="row d-flex justify-content-center align-items-center h-100">
	      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
	        <div class="card shadow-2-strong" style="border-radius: 1rem;">
	          <form 
	          		action="/login"
	          		method="POST"
		          	class="card-body p-5 text-center">
					
					<p 
						class="text-danger"> 
						${errorMessage} 
					</p>
					
		            <h3 class="mb-5">Sign in</h3>
		
		            <div class="form-outline mb-4">
		              <input type="email" id="email" name="email" class="form-control form-control-lg" />
		              <label class="form-label" for="email">Email</label>
		            </div>
		
		            <div class="form-outline mb-4">
		              <input type="password" id="password" name="password" class="form-control form-control-lg" />
		              <label class="form-label" for="password">Password</label>
		            </div>
		            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
					
					<div class="container">
						<small>
							Don't have an account ? <a href="/register">create</a>
						</small>
					</div>
					
		            <hr class="my-4">
		
		            <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #dd4b39;" type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button>
		            <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;" type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>
		
	          </form>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</body>
</html>