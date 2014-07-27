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
				<div class="transparent p1">
					<jsp:include page="includes/main/image_carousel.jsp" />
				</div>
				<div class="section group">
					<s:iterator value="entries" var="entry">
						<div class="col_1_of_3 span_1_of_3">
							<h3>
								<s:property value="#entry.titulo" />
							</h3>
							<p>
								<s:property value="#entry.content" />
							</p>
							<button class="btn1 btn-8 btn-8a">More</button>
						</div>
					</s:iterator>

					<div class="clear"></div>
				</div>
				<div class="content_top">
					<div class="heading">
						<h3>Proximos eventos:</h3>
					</div>
					<div class="page-no">
						<p>Resultados:</p>
						<ul>
							<li><a href="#">1</a></li>
							<li class="active"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li>[<a href="#"> Next&gt;&gt;&gt;</a>]
							</li>
						</ul>
						<p></p>
					</div>
					<div class="clear"></div>
				</div>
				<div class="section group">

					<s:iterator value="entries" var="entry">

						<div class="col_1_of_4 span_1_of_4">
							<div class="view effect">
								<a href="single.html"> <img
									src="<s:property value="#entry.imageurl" />" alt=""></a>
							</div>
							<div class="cart">
								<p class="title" style="height: 38px;">
									<s:property value="#entry.titulo" />
								</p>
								<div class="price" style="height: 19px;">
									<span class="actual">$<s:property value="#entry.precio" /></span>
								</div>
								<input type="submit" value="Add to Cart" class="button">
							</div>
						</div>

					</s:iterator>

					<div class="clear"></div>
				</div>
			</div>
			<jsp:include page="includes/common_footer.jsp" />
		</div>
	</div>
</body>
</html>



