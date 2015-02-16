<jsp:include page="template-top.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="databeans.PhotoBean"%>

     <div class="container">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Vote for the Pet of this Week!</h1>
            </div>
			<c:forEach items="${photoList}" var="flickr">
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="${flickr.url}">
                    <img class="img-responsive" alt="" src="${flickr.url }">
                </a>
				<input type="button" value="Vote ${flickr.vote}" disabled>
            </div>
			</c:forEach>
        </div>

    </div>
<jsp:include page="template-bottom.jsp" />