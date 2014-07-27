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
		$("#menuAboutLi").addClass("current");
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
						<article>
							<img src="images/img1.png" />
							<h2>
								<a href="#">Dreaming With Us All Night</a>
							</h2>
							<div class="info">
								[By Admin on December 01, 2012 with <a href="#">01 Commnets</a>]
							</div>
							<p>Consectetur adipisci. Belit, sed quia non numquam eius
								modi tempora incidunt, ut labore et dolore ater magnam aliquam
								quaerat voluptatem. ut enim ad minima ven m, quis nost. Rum
								exercitationem ullam. Corporis suscipit laboriosam, nisi ut
								aliquid ex ea commodi consequatur? quis autem vel eum iure
								reprehenderit Fusce euismod consequat ante. Lorem ipsum dolor
								sit amet, consectetuer adipiscing elit. Pellentesque sed dolor.
								Aliquam congue</p>
							<p>Consectetur adipisci. Belit, sed quia non numquam eius
								modi tempora incidunt, ut labore et dolore ater magnam aliquam
								quaerat voluptatem. ut enim ad minima ven m, quis nost. Rum
								exercitationem ullam. Corporis suscipit laboriosam, nisi ut
								aliquid ex ea commodi consequatur? quis autem vel eum iure
								reprehenderit Fusce euismod consequat ante. Lorem ipsum dolor
								sit amet, consectetuer adipiscing elit. Pellentesque sed dolor.
								Aliquam congue</p>
							<p>Consectetur adipisci. Belit, sed quia non numquam eius
								modi tempora incidunt, ut labore et dolore ater magnam aliquam
								quaerat voluptatem. ut enim ad minima ven m, quis nost. Rum
								exercitationem ullam. Corporis suscipit laboriosam, nisi ut
								aliquid ex ea commodi consequatur? quis autem vel eum iure
								reprehenderit Fusce euismod consequat ante. Lorem ipsum dolor
								sit amet, consectetuer adipiscing elit. Pellentesque sed dolor.
								Aliquam congue</p>
							<div class="comment">
								Your email address will not be published. Required fields are
								marked *
								<form>
									<div>
										<input type="text" name="name" id="name"> Name *
									</div>
									<div>
										<input type="email" name="email" id="email"> Email *
									</div>
									<div>
										<input type="url" name="website" id="website"> Website
									</div>
									<div>
										<textarea rows="10" name="comment" id="comment"></textarea>
									</div>
									<div>
										<input type="submit" name="submit" value="Submit">
									</div>
								</form>
							</div>
						</article>
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