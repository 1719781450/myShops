<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<div class="sliderbox">
	<div id="btn-left" class="arrow-btn dasabled"></div>
	<div class="slider">
		<ul>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/go-launcher-ex.jpg"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/go-sms.jpg"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/imgwww20120104173328332830083.png"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/imgwww20120222114514451461239.jpg"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/ggbook.jpg"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/imgwww20120621153035303523388.png"/></a></li>
			<%-- <li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/lianxiren.jpg"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/go-touch.jpg"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/3g-android-market.jpg"/></a></li>
			<li><a href="${pageContext.request.contextPath}/xiuxianqu.html" target="_blank"><img src="${pageContext.request.contextPath}/images/showPro/3ggoucai.jpg"/></a></li> --%>
		</ul>
	</div>
	<div id="btn-right" class="arrow-btn"></div>
</div>

<script>

var $slider = $('.slider ul');
var $slider_child_l = $('.slider ul li').length;
var $slider_width = $('.slider ul li').width();
$slider.width($slider_child_l * $slider_width);

var slider_count = 0;

if ($slider_child_l < 6) {
	$('#btn-right').css({cursor: 'auto'});
	$('#btn-right').removeClass("dasabled");
}

$('#btn-right').click(function() {
	if ($slider_child_l < 6 || slider_count >= $slider_child_l - 6) {
		return false;
	}
	
	slider_count++;
	$slider.animate({left: '-=' + $slider_width + 'px'}, 'slow');
	slider_pic();
});

$('#btn-left').click(function() {
	if (slider_count <= 0) {
		return false;
	}
	
	slider_count--;
	$slider.animate({left: '+=' + $slider_width + 'px'}, 'slow');
	slider_pic();
});

function slider_pic() {
	if (slider_count >= $slider_child_l - 6) {
		$('#btn-right').css({cursor: 'auto'});
		$('#btn-right').addClass("dasabled");
	}
	else if (slider_count > 0 && slider_count <= $slider_child_l - 6) {
		$('#btn-left').css({cursor: 'pointer'});
		$('#btn-left').removeClass("dasabled");
		$('#btn-right').css({cursor: 'pointer'});
		$('#btn-right').removeClass("dasabled");
	}
	else if (slider_count <= 0) {
		$('#btn-left').css({cursor: 'auto'});
		$('#btn-left').addClass("dasabled");
	}
}

$('.slider a').hover(function() {
	if ($(this).find('img:animated').length) return;
	$(this).animate({marginTop: '0px'}, 300);
	$(this).find('img').animate({width: '150px'}, 300);
}, function() {
	
	$(this).animate({marginTop: '24px'}, 200);
	$(this).find('img').animate({width: '90px'}, 200);
});

</script>
	