<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<h3>Please fill in your information below:</h3>
<br />
	<sf:form action="${pageContext.request.contextPath}/edittaksat/${taksat.taksId}"
			method="post" commandName="taksat" cssStyle="form-horizontal">
<input type="hidden" name="id"  value="${taksat.taksId}"/>   
	<div class="form-group">
		<label for="year" style="text-align: right;"class="col-sm-2 control-label">Year:</label>
		<sf:input path="year" id="year" type="text" name="year"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="year" />
		</div>
	</div>
	<br/>
	<div class="form-group">
		<label for="pageminimale" style="text-align: right;"class="col-sm-2 control-label">Paga min:</label>
		<sf:input path="pageminimale" id="pageminimale" type="text" name="pageminimale"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="pageminimale" />
		</div>
	</div>
	<br/>
	<div class="form-group">
		<label for="pagemaksimale" style="text-align: right;"class="col-sm-2 control-label">Paga max:</label>
		<sf:input path="pagemaksimale" id="pagemaksimale" type="text" name="pagemaksimale"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="pagemaksimale" />
		</div>
	</div>
	<br/>
	<div class="form-group">
		<label for="kfpagmin" style="text-align: right;"class="col-sm-2 control-label">Kof. Page Min:</label>
		<sf:input path="kfpagmin" id="kfpagmin" type="text" name="kfpagmin"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="kfpagmin" />
		</div>
	</div>
	<br/>
	<br/>
	<div class="form-group">
		<label for="kfpagmax" style="text-align: right;"class="col-sm-2 control-label">Kof. Page Max:</label>
		<sf:input path="kfpagmax" id="kfpagmax" type="text" name="kfpagmax"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="kfpagmax" />
		</div>
	</div>
	<br/>
 
		
	<input type="submit" value="submit" class="btn btn-default"
		style="margin-left: 200px">
	<a href="<c:url value="/taksat" />" class="btn btn-default">Cancel</a>
</sf:form>

