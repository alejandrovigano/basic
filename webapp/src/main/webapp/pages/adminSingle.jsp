<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<jsp:include page="includes/common_head.jsp" />

<body>
	<div class="wrap">

		<jsp:include page="includes/common_header.jsp" />

		<div class="main">
			<div class="main-top">
				<div class="section group">

					<s:if test="hasActionErrors()">
						<s:actionerror />
					</s:if>
					<!-- show success message only when file successfully uploads -->
					<s:if test="hasActionMessages()">
						<s:actionmessage />
					</s:if>

					<s:form>
						<table style="background-color: white;">
							<tr>
								<td><a><s:label> Titulo  </s:label></a></td>
								<td><s:textfield name="entry.titulo"></s:textfield></td>
							</tr>
							<tr>
								<td><a><s:label> Contenido  </s:label></a></td>
								<td><s:textarea name="entry.content"></s:textarea></td>
							</tr>
							<tr>
								<td><a><s:label> Autor  </s:label></a></td>
								<td><s:textfield name="entry.autor"></s:textfield></td>
							</tr>
							<tr>
								<td><a><s:label> Url de imagen  </s:label></a></td>
								<td><s:textfield name="entry.imageUrl"></s:textfield></td>
							</tr>
							<tr>
								<td><a><s:label> Url SoundCloud  </s:label></a></td>
								<td><s:textfield name="entry.soundcloudUrl"></s:textfield></td>
							</tr>
							<tr>
								<td><a><s:label> Url Youtube </s:label></a></td>
								<td><s:textfield name="entry.youtubeUrl"></s:textfield></td>
							</tr>
							<tr>
								<td><a><s:label> Precio  </s:label></a></td>
								<td><s:textfield name="entry.precio"></s:textfield></td>
							</tr>
							<tr>
								<td><s:submit action="saveAction" label="GUARDAR POST"></s:submit></td>
							</tr>
						</table>
					</s:form>


					<s:form action="uploadFilesAdminAction" method="post"
						enctype="multipart/form-data">
						<!-- input type file for file upload, make sure to set multiple="multiple" for multiple uploads -->
						<s:file label="File" name="files" multiple="multiple"></s:file>
						<s:submit value="Upload Files"></s:submit>
					</s:form>

					<div class="clear"></div>
				</div>
			</div>
			<jsp:include page="includes/common_footer.jsp" />
		</div>
	</div>
</body>
</html>



