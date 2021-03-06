<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="common/vanillaHeader.jsp" />

<div class="container">
	<form:form action="loginStudent" method="post" modelAttribute="student"
		class="form-signin">
		<h2 class="form-signin-heading">Login to MyStudentLife</h2>

		<div class="form-group row">
			<label for="userName" class="col-sm-2 col-form-label">Username</label>
			<form:input type="text" path="userName" class="col-sm-4"
				placeholder="username" autofocus="true"></form:input>
			<form:errors path="userName" element="div" class="has-error"></form:errors>
		</div>
		<div class="form-group row">
			<label for="password" class="col-sm-2 col-form-label">Password</label>
			<form:input type="password" path="password" class="col-sm-4"
				placeholder="password"></form:input>
			<form:errors path="password" element="div" cssClass="error"></form:errors>
		</div>

		<span class="button">
			<button class="btn btn-lg btn-primary" type="submit">Submit</button>
			<c:if test="${doesStudentExist eq false}">
				<span>${userExistMessage}</span>
				<i class="fas fa-exclamation-triangle"></i>
			</c:if> <c:if test="${isPasswordCorrect eq false}">
				<span>${incorrectLoginMessage}</span>
				<i class="fas fa-exclamation-triangle"></i>
			</c:if>
		</span>
	</form:form>
	<div class="row">
		<div class="group1 col-sm-6 col-md-6">
			<span></span> <a href="/register">Register</a>
		</div>
	</div>
</div>
<jsp:include page="common/footer.jsp" />

