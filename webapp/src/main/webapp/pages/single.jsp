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
						<div class="desc span_3_of_2">
							<h3>
								<s:property value="entry.titulo" />
							</h3>
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

						<div class="links">
							<ul>
								<li><a href="#"><img src="images/blog-icon1.png"
										title="date"><span>june 14, 2013</span></a></li>
								<li><a href="#"><img src="images/blog-icon2.png"
										title="Admin"><span>admin</span></a></li>
								<li><a href="#"><img src="images/blog-icon3.png"
										title="Comments"><span>No comments</span></a></li>
								<li><a href="#"><img src="images/blog-icon4.png"
										title="Lables"><span>View posts</span></a></li>
								<li><a href="#"><img src="images/blog-icon5.png"
										title="permalink"><span>permalink</span></a></li>
							</ul>
						</div>
						<div class="leave-comment">
							<div class="fb-comments"
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



