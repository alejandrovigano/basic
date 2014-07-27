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

$(document).ready(function(){
	$("#menuContactLi").addClass( "current" );
})

</script>

<body>

	<jsp:include page="includes/common_header.jsp" />


	<jsp:include page="includes/common_menu.jsp"/> 


	<!--------------Content--------------->
	<section id="content">
		<div class="wrap-content zerogrid">
			<div class="row block03">
				<div class="col-2-3">
					<div class="wrap-col">
						<article>
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
								<h2>Find Us</h2>
							</div>
							<div class="content">
								<img src="images/map.png" />
								<p>Petru Zadnipru 15/2 Chisinau 2044, Republic of Moldova</p>
								<p>Freephone : +1 800 445 7880</p>
								<p>Telephone : +1 800 995 6880</p>
								<p>Fax : +1 800 465 1990</p>
								<p>Email : zerotheme@demolink.com</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="includes/common_footer.jsp" />

</body>
</html>