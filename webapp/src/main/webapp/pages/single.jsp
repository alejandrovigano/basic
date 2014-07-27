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
					<div class="content span_1_of_2">
						<div class="grid images_3_of_2"> 
							<img src="<s:property value="entry.imageurl" />" alt="" />
						</div>
						<div class="desc span_3_of_2" style="margin-top: 10px;">
							<div class="desc" id="#title">
								<h3>
									<s:property value="entry.titulo" />
								</h3>
							</div>
							<div class="desc">
								<p class="para">
									<s:property value="entry.content" />
								</p>
								<div class="price">
									<span class="text">Precio:</span> <span class="price-new">
										$<s:property value="entry.precio" />
									</span>
								</div>
							</div>
						</div>

						<div class="leave-comment">
							<div class="fb-comments" style="margin-top: 5%; margin-bottom: 5%;" 
								data-href="http://ar.com.alme.previa.show/post/<s:property value="#entry.id" />"
								data-numposts="2" data-colorscheme="dark"></div>
						</div>
					</div>

					<jsp:include page="single/rightbar.jsp" />

					<div class="clear"></div>
				</div>
			</div>
			<jsp:include page="includes/common_footer.jsp" />
		</div>
	</div>
</body>
</html>



