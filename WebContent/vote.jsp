<jsp:include page="template-top.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<br />
	<br />
	<br />
	<br />
	<br />
<div class="container">
	<div class="row clearfix">
		<c:forEach var="item" items="${photoList}"> 
			<div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="view.do?id=${photoId}">
                    <img class="img-responsive" src="${item.photo}" alt="">
                </a>
                <p>	${item.vote} </p>
                <button type="button" class="btn btn-primary btn-sm btn-block">Vote</button>
            </div>
		</c:forEach>
	</div>
</div>
<jsp:include page="template-bottom.jsp"/>