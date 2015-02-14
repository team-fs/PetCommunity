<jsp:include page="template-top.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<br />
	<br />
	<br />
	<br />
	<br />
<div class="container">
	<div class="row clearfix">
		<c:forEach var="item" items="${photos}"> 
			<div class="col-md-4 column">
				<img alt="140x140" src="${item.photo}" />
				<div class="row clearfix">
					<div class="col-md-8 column">
						<p>	${item.description} </p>
					</div>
					<div class="col-md-4 column">
						 <button type="button" class="btn btn-primary btn-sm btn-block">Vote</button>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<jsp:include page="template-bottom.jsp"/>