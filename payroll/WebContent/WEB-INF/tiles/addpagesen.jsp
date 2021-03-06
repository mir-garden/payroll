<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<h3>Please fill in your information below:</h3>
<br />
	<sf:form action="${pageContext.request.contextPath}/createpagesen"
			method="post" commandName="pagesen" cssStyle="form-horizontal" >
<sf:input type="hidden" path="id"  value="${pagesen.id}"/>  

	<div class="form-group">
		<label for="date" style="vertical-align: top; text-align: right;" class="col-sm-2 control-label">Date:</label><input
			 class="date" name="date" type="text" style="margin-left:20px"/>
	</div>
		 
	<div class="form-group">
		<label style="vertical-align: top; text-align: right;"  for="aktivPasiv" class="col-sm-2 control-label">AktivPasiv:</label>
		<select id="aktivPasiv" name="aktivPasiv"  style="width: 250px;margin-left:200px">
	        <c:forEach items="${aktivpasiv}" var="item"> 
	             <option value="${item.id}">${item.employee.firstName} ${item.employee.lastName} </option>
	        </c:forEach>
	    </select>   
	</div>  
	<br/>
	

 	<label style="vertical-align: top; text-align: right;"  for="employeeBank" class="col-sm-2 control-label">Bank:</label>
	
	    <select id="employeeBank" name="employeeBank" class="form-control" style="width: 250px;margin-left:200px">
	    </select>

	<br/> 
	<div class="form-group">
		<label for="paradhenie" style="text-align: right;" class="col-sm-2 control-label">Paradhenie:</label>
		<sf:input path="paradhenie" id="paradhenie" type="text" name="paradhenie"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="paradhenie" />
		</div>
	</div>
	<br/>
	<div class="form-group">
		<label for="pagesaCash" style="text-align: right;" class="col-sm-2 control-label">Pagesa Cash:</label>
		<sf:input path="pagesaCash" id="pagesaCash" type="text" name="pagesaCash"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="pagesaCash" />
		</div>
	</div>
	<br/>
		
	<div class="form-group">
		<label for="pagesaBank" style="text-align: right;" class="col-sm-2 control-label">Pagesa Bank:</label>
		<sf:input path="pagesaBank" id="pagesaBank" type="text" name="pagesaBank"
			cssStyle="margin-left:20px" cssClass="form-Control" />
		<br />
		<div class="erroracount">
			<sf:errors path="pagesaBank" />
		</div>
	</div>
	<br/>

	<input type="submit" value="submit" class="btn btn-default"
		style="margin-left: 200px">
	<a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
</sf:form>
<script>
	$(document).ready(
			function() {
				var date_input = $('.date'); //our date input has the name "date"
				var container = $('.bootstrap-iso form').length > 0 ? $(
						'.bootstrap-iso form').parent() : "body";
				var options = {
					format : 'dd/mm/yyyy',
					container : container,
					todayHighlight : true,
					autoclose : true
					
				};
				date_input.datepicker(options);

				$('#aktivPasiv').change(function(){
					var id = $('#aktivPasiv option:selected').val();
					$.ajax({

						type:'GET',
					
						url:'<c:url value="/getEmployeeBanksAktiv/" />'+id,
						contentType: 'application/json; charset=utf-8',
					    dataType: 'json',
						success: function (result){
							var s='';

							for(var i=0; i < result.length;i++){
								s+="<option value='" + result[i].id+ "'>" +result[i].bank.bankName + "</option>"
								
								}

							$('#employeeBank').html(s);

							}
						 });
						 
					});
				
			
				 $("#aktivPasiv").select2({ width: 'resolve' });

				 
			})
</script>


			