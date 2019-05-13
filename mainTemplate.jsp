<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<body>
	<jsp:include page="top.jsp" flush="false" />
	<table cellpadding="2" cellspacing="0" class="templateTable">
		<tr>
			<td></td>
		</tr>
		<tr>
			<td>
				<jsp:include page="<%=contentPage%>" flush="false" />
			</td>
		</tr>

		<tr>
			<td><jsp:include page="bottom.jsp" flush="false" /></td>
		</tr>

	</table>
	
	<div class="hidden" style="display:none"><jsp:include page="recommend.jsp" flush="false" /></div>
</body>