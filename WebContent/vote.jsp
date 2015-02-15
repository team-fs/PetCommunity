<jsp:include page="template-top.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<br />

<p style="font-size:medium">
    Photos for ${firstName} ${lastName}
</p>
<div class="container">
	<div class="row clearfix">
		<c:forEach var="item" items="${photoList}"> 
			<div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="http://placehold.it/400x300">
                    <img class="img-responsive" src="img/background.jpg" alt="">
                </a>
                <p>	${item.vote} </p>
                <button type="button" class="btn btn-primary btn-sm btn-block">Vote</button>
            </div>
		</c:forEach>
	</div>
</div>

<div id="myElement"></div>
<script type="text/javascript" src="js/javascript-flickr-badge.min.js"></script>
<script type="text/javascript">
  jsFlickrBadge(document.getElementById('myElement'), {
      // your Flickr ID (find it here)
      flickrId: '16202569@N00',
      // feed type. user, group, contacts, etc.
      feed: 'user',
      // optional comma-delimited tags to filter by, only used with 'user' feed
      tags: 'badge,awesome',
      // number of rows to display
      rows: 4,
      // number of columns to display
      columns: 4,
      // size of each thumbnail (any bigger than 75 will cause pixelization)
      size: 75,
      // animation to use.
      // one of: vscroll, random, vscroll, shuffle, zoom, scroll, flipX, flipY
      animation: 'vscroll',
      // seconds each animation takes
      animationSpeed: 1,
      // seconds between each animation
      animationPause: 2
    });
</script>

<jsp:include page="template-bottom.jsp"/>