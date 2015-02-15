<jsp:include page="template-top.jsp" />

<%@ page import="databeans.PhotoBean" %>
<p>
	<table>
<%
    for (PhotoBean photo : (PhotoBean[])request.getAttribute("photoList")) {
%>
		<tr>
			<td><a href="view.do?id=<%=photo.getPhotoId()%>"><%=photo.getCaption()+"  "+photo.getVote()%></a></td>
		</tr>
<%
		}
%>
	</table>
</p>

<jsp:include page="template-bottom.jsp" />