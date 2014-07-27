<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<jsp:include page="includes/common_head.jsp" />

<script type="text/javascript">
	$(document).ready(function() {
		$("#menuBlogLi").addClass("current");
	})
</script>

<body>

	<jsp:include page="includes/common_header.jsp" />

	<jsp:include page="includes/common_menu.jsp" />


	<!--------------Content--------------->
	<section id="content">
		<div class="wrap-content zerogrid">
			<div class="row block03">
				<div class="col-2-3">
					<div class="wrap-col">
						<s:iterator value="entries" var="entry">
							<article>
								<s:if
									test="%{#entry.soundcloudUrl==null || #entry.soundcloudUrl==''}">

									<img src="<s:property value="#entry.imageurl" />" />
								</s:if>

								<h2>
									<a href="#"><s:property value="#entry.titulo" /></a>
								</h2>
								<div class="info">[Por <s:property value="#entry.autor" /> - <s:property value="#entry.fechaCreacion" />]</div>
								<p>

									<s:if test="%{#entry.soundcloudUrl==null || #entry.soundcloudUrl==''}">
										<s:property value="#entry.content" />
									</s:if>
									<s:else>
										<iframe width="100%" height="120" scrolling="no"
											frameborder="no"
											src="<s:property value="#entry.soundcloudUrl" />">
										</iframe>
									</s:else>
								</p>
								<div class="fb-comments"
									data-href="http://ar.com.alme.previa.show/post/<s:property value="#entry.id" />"
									data-numposts="2" data-colorscheme="dark"></div>
							</article>
						</s:iterator>
						<ul id="pagi">
							<li><a class="current" href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">next</a></li>
						</ul>
					</div>
				</div>
				<div class="col-1-3">
					<div class="wrap-col">
						<div class="box">
							<div class="heading">
								<h2>Latest Albums</h2>
							</div>
							<div class="content">
								<img src="images/albums.png" />
							</div>
						</div>
						<div class="box">
							<jsp:include page="includes/common_next_event.jsp" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="includes/common_footer.jsp" />

</body>
</html>