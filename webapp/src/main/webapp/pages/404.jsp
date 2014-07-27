<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<jsp:include page="includes/common_head.jsp" />

<body>
	<div class="wrap">
		<div class="header">
			<div class="header-top">
				<div class="search-bar">
					<ul>
						<li><input type="text"></li>
						<input name="searchsubmit" type="image"
							src="images/search-icon.png" value="Go" id="searchsubmit"
							class="btn">
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="header-bot">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt="" /></a>
				</div>
				<div class="top-nav">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active"><a href="about.html">About</a></li>
						<li><a href="archives.html">Archives</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="main">
			<div class="main-top">
				<div class="page-not-found">
					<h1>404</h1>
				</div>
			</div>
			<jsp:include page="includes/common_footer.jsp" />
		</div>
	</div>
</body>
</html>



