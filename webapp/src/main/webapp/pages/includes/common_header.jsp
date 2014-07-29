<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="header">
	<div class="header-top">

		<div class="clear"></div>
	</div>
	<div class="header-bot">
		<div class="logo">
			<a href="homeAction.do"><img src="images/logo.png" alt="" /></a>
		</div>
		<div class="top-nav">
			<ul>
				<li class="active"><a href="homeAction.do">Inicio</a></li>
				<li><a href="#">Fotos</a></li>
				<li><a href="#">Eventos</a></li>
				<li><a href="#">Quienes somos</a></li>
				<li><a href="#">Contacto</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div class="banner">
		<div id="wrapper">
			<div class="slider-wrapper theme-default">
				<div id="slider" class="nivoSlider">
					<s:iterator value="stickyEntries" var="entry">
						<img src="<s:property value="#entry.imageurl" />" alt="" />
					</s:iterator>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="common_fixed_header.jsp" />

