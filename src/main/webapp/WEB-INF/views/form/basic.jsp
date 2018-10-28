<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form / Basic</title>
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
            <li class="active">Basic</li>
        </ol>

        <div class="panel panel-default">
            <div class="panel-heading">Input Form</div>
            <div class="panel-body">

                <form:form method="post" modelAttribute="inputForm">
                    <spring:hasBindErrors name="inputForm">
                        <c:set var="errors" value="${errors}" />
                    </spring:hasBindErrors>

                    <div class="form-group ${errors.hasFieldErrors('input') ? 'has-error' : ''}">
                        <form:label path="input" cssClass="control-label">Input</form:label>
                        <form:input path="input" cssClass="form-control" placeholder="Input" />
                        <form:errors path="input" cssClass="help-block" />
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('password') ? 'has-error' : ''}">
                        <form:label path="password" cssClass="control-label">Password</form:label>
                        <form:password path="password" cssClass="form-control" placeholder="Password" />
                        <form:errors path="password" cssClass="help-block" />
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('select') ? 'has-error' : ''}">
                        <form:label path="select" cssClass="control-label">Select</form:label>
                        <form:select path="select" cssClass="form-control">
                            <form:option value="">Please Select...</form:option>
                            <form:options items="${selectList}" />
                        </form:select>
                        <form:errors path="select" cssClass="help-block" />
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('checkboxes') ? 'has-error' : ''}">
                        <label class="control-label">CheckBox</label>
                        <c:forEach items="${selectList}" var="item" varStatus="status">
                            <label for="checkboxes${status.count}" class="checkbox-inline">
                                <form:checkbox path="checkboxes" value="${item.key}" />${item.value}
                            </label>
                        </c:forEach>
                        <form:errors path="checkboxes" cssClass="help-block" />
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('radio') ? 'has-error' : ''}">
                        <label class="control-label">Radio</label>
                        <c:forEach items="${selectList}" var="item" varStatus="status">
                            <label for="radio${status.count}" class="radio-inline">
                                <form:radiobutton path="radio" value="${item.key}" />${item.value}
                            </label>
                        </c:forEach>
                        <form:errors path="radio" cssClass="help-block" />
                    </div>

                    <div class="form-group ${errors.hasFieldErrors('date') ? 'has-error' : ''}">
                        <form:label path="date" cssClass="control-label">Date</form:label>
                        <form:input path="date" cssClass="form-control date" placeholder="Date" />
                        <form:errors path="date" cssClass="help-block" />
                    </div>

                    <form:button class="btn btn-primary">Submit</form:button>
                    <form:button class="btn btn-default" type="reset">Reset</form:button>

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
