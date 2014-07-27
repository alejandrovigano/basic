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
					<jsp:include page="main/image_carousel.jsp" />
				</div>
				<div class="section group">
					<s:iterator value="lastEntries" var="entry">
						<div class="col_1_of_3 span_1_of_3">
							<h3>
								<s:property value="#entry.titulo" />
							</h3>
							<p>
								<s:property value="#entry.content" />
							</p>
							<button class="btn1 btn-8 btn-8a" href="singleAction.do?id=<s:property value="#entry.id" />" >More</button>
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

					<s:iterator value="eventEntries" var="entry">

						<div class="col_1_of_4 span_1_of_4">
							<h3>
								<s:property value="#entry.titulo" />
							</h3>
							<div class="view effect">
								<a href="singleAction.do?id=<s:property value="#entry.id" />"> <img
									src="<s:property value="#entry.imageurl" />" alt=""></a>
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



