 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post job</title>
 <%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color:#f0f1f2;">
<c:if test="${userobj.role ne 'admin' }">
     <c:redirect url="login.jsp"></c:redirect>
</c:if>

  <%@include file="all_component/navbar.jsp" %>

 <div class="container p-2">

<div class="col-md-10 offset-md-1">
<div class="card">
<div class="card-body">
<div class="text-center text-success">
<i class="fa-solid fa-users"></i>

    <c:if test="${not empty succMsg }">
    <div class="alert alert-success" role="alert">${ succMsg }</div>
 </c:if>

<h5>Add Jobs</h5>
</div>
<form action="add_job" method="post">
  <div class="form-group">
  <label>Enter Title</label>
  <input type="text" name="title" required class="form-control">
  </div>
      <div class="form-row">
      <div class="form-group col-md-4">
      <label>Location</label>
      <select name="location"
       class="custom-select" id="inlineFormCustomSelectPref">
       <option selected>Choose...</option>
       <option value="Odisha">Odisha</option>
       <option value="Jharkhand">Jharkhand</option>
       <option value="Gujarat">Gujarat</option>
       <option value="Bhubaneshwar">Bhubaneshwar</option>
       <option value="Delhi">Delhi</option>
       <option value="Banglore">Banglore</option>
       <option value="Kolkata">Kolkata</option>
       <option value="Manglore">Manglore</option>
       <option value="Goa">Goa</option>
       <option value="Tamil Nadu">Tamil Nadu</option>
       <option value="Haryana">Haryana</option>
       <option value="Hyderabad">Hydrebad</option>
       </select>
       </div>
       
       <div class="form-group  col-md-4">
       <label>Category</label>
       <select class="custom-select "id="inlineFormCustomSelectPref" name="category">
       <option selected>Choose....</option>
       <option value="IT">IT </option>
       <option value="Developer">Developer</option>
       <option value="Banking">Banking</option>
       <option value="Engineer">Engineer</option>
       <option value="Teacher">Teacher</option>
       <option value="Sociologists">Sociologists</option>
       <option value="Designer">Designer</option>
       <option value="Marketing">Marketing</option>
       <option value="Analysts">Analysts</option>
       <option value="Writer">Writer</option>
       <option value="Architect">Architect</option>
       <option value="Manager">Manager</option>
       <option value="Machine Learning Engineer">Machine Learning Engineer</option>
</select>
</div>
<div class="form-group">
<label>Status</label>
<select class="form-control" name="status">
<option class="Active" value="Active">Active</option>
<option class="Inactive" value="Inactive">Inactive</option>

</select>
</div>
</div>

<div class="form-group">
<label>Enter Description</label>
<textarea required rows="6" cols="  " name="desc"
class="form-control"></textarea>
</div>

<button class="btn btn-success">Publish Job</button>
</form>
</div>
</div>
</div>
</div>
</body>
</html>
</div>

