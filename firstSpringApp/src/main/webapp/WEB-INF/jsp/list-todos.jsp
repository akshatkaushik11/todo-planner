<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="container">
<table class="table table-striped">
<caption>Your todos are:
</caption>
<thead>
<tr>
<th> Description </th>
<th> Target Date </th>
<th> Status </th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<c:forEach items="${todos}" var="item">
<tr>
<td>${item.desc}</td>
<td><fmt:formatDate value = "${item.targetDate}" pattern = "dd/MM/yyyy"/></td>
<td>${item.done}</td>
<td><a type="button" class="btn btn-success" href="/update-todo?id=${item.id}">Update</a></td>
<td><a type="button" class="btn btn-warning" href="/delete-todo?id=${item.id}">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<div><a class="button" href="add-todos" >Add Todo</a> for ${name}</div>

	    </div>
<%@ include file="common/footer.jspf" %>

