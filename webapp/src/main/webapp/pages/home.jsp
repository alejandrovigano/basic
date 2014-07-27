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
		$("#menuHomeLi").addClass("current");
	})
</script>

<body>

	<jsp:include page="includes/common_header.jsp" />



	<div class="featured">
		<div class="wrap-featured zerogrid">
			<div class="slider">
				<div class="rslides_container">
					<ul class="rslides" id="slider">
						<li><img src="http://i58.tinypic.com/2ugz3h2.jpg" /></li>
						<li><img src="images/slide2.png" /></li>
						<li><img src="images/slide3.png" /></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="includes/common_menu.jsp" />

	<!--------------Content--------------->
	<section id="content">
		<div class="wrap-content zerogrid">
			<div class="row block01">
				<div class="col-1-3">
					<div class="wrap-col box">
						<h2>The White Night</h2>
						<p>Fusce suscipit varius mi. Cum sociis natoque penatibus et
							magnis.</p>
						<div class="more">
							<a href="#">[...]</a>
						</div>
					</div>
				</div>
				<div class="col-1-3">
					<div class="wrap-col box">
						<h2>Tons of Fans</h2>
						<p>Fusce suscipit varius mi. Cum sociis natoque penatibus et
							magnis.</p>
						<div class="more">
							<a href="#">[...]</a>
						</div>
					</div>
				</div>
				<div class="col-1-3">
					<div class="wrap-col box">
						<h2>Best DJ's Ever</h2>
						<p>Fusce suscipit varius mi. Cum sociis natoque penatibus et
							magnis.</p>
						<div class="more">
							<a href="#">[...]</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row block02">
				<div class="col-2-3">
					<div class="wrap-col">
						<div class="heading">
							<h2>Lo ultimo</h2>
						</div>
						<s:iterator value="lastEntries" var="entry">
							<article class="row">
								<div class="col-1-3">
									<div class="wrap-col">
										<img src="<s:property value="#entry.imageurl" />" />
									</div>
								</div>
								<div class="col-2-3">
									<div class="wrap-col">
										<h2>
											<a href="#"><s:property value="#entry.titulo" /></a>
										</h2>
										<div class="info">
											[Por
											<s:property value="#entry.autor" />
											-
											<s:property value="#entry.fechaCreacion" />
											]
										</div>
										<p>
											<s:property value="#entry.content" />
										</p>
									</div>
								</div>
							</article>
						</s:iterator>




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