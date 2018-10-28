<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form / Horizontal</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/css/bootstrap-datepicker3.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/app/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/app/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/app/js/bootstrap-datepicker.min.js"></script>
</head>
<body>
    <div id="wrapper" class="container-fluid">
        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/form">Form</a></li>
            <li class="active">Horizontal</li>
        </ol>

        <div class="panel panel-default">
            <div class="panel-heading">Input Form</div>
            <div class="panel-body">

                <form:form method="post" modelAttribute="inputForm" class="form-horizontal">
                    <spring:hasBindErrors name="inputForm">
                        <c:set var="errors" value="${errors}" />
                    </spring:hasBindErrors>

                    <div class="form-group ${errors.hasFieldErrors('input') ? 'has-error' : ''}">
                        <form:label path="input" cssClass="control-label col-sm-2">Input</form:label>
                        <div class="col-sm-10">
                            <form:input path="input" cssClass="form-control" placeholder="Input" />
                            <form:errors path="input" cssClass="help-block" />
                        </div>
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('password') ? 'has-error' : ''}">
                        <form:label path="password" cssClass="control-label col-sm-2">Password</form:label>
                        <div class="col-sm-10">
                            <form:password path="password" cssClass="form-control" placeholder="Password" />
                            <form:errors path="password" cssClass="help-block" />
                        </div>
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('select') ? 'has-error' : ''}">
                        <form:label path="select" cssClass="control-label col-sm-2">Select</form:label>
                        <div class="col-sm-10">
                            <form:select path="select" cssClass="form-control">
                                <form:option value="">Please Select...</form:option>
                                <form:options items="${selectList}" />
                            </form:select>
                            <form:errors path="select" cssClass="help-block" />
                        </div>
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('date') ? 'has-error' : ''}">
                        <form:label path="date" cssClass="control-label col-sm-2">Date</form:label>
                        <div class="col-sm-10">
                            <form:input path="date" cssClass="form-control date" placeholder="Date" />
                            <form:errors path="date" cssClass="help-block" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <form:button class="btn btn-primary">Submit</form:button>
                            <form:button class="btn btn-default" type="reset">Reset</form:button>
                        </div>
                    </div>

                </form:form>

            </div>
        </div>
    </div>

    <script type="text/javascript">
					$('.date').datepicker({
						format : 'yyyy-mm-dd'
					});
				</script>

</body>
</html>
