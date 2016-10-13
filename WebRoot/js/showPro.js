$(document).ready(function(){
	
	var lb = $("#limit-buy"),
		lb_cur = 1,
		lbp_w = lb.find(".products").width();
		lb_timer = null;
	t = 1;
	function showLimitBuyProducts(){
		if(lb_cur < 1){
			lb_cur = 4;
		} else if(lb_cur > 4){
			lb_cur = 1;
		}
		$("#J-lbcp").html(lb_cur);
		var products = $("#limit-buy .products").hide().eq(lb_cur-1).show(),
			ta = products.find("textarea");
			
		if(ta.length){
			products.html(ta.val());
		}
	}
	lb_timer = setInterval(function(){
		lb_cur++;
		showLimitBuyProducts();
	}, 4000);
	
	$("#J-lbn .prev, #J-lb .btn-prev").click(function(){
		lb_cur--;
		showLimitBuyProducts();
	});
	$("#J-lbn .next, #J-lb .btn-next").click(function(){
		lb_cur++;
		showLimitBuyProducts();
	});
	$("#J-lb").hover(function(){
			clearInterval(lb_timer);
			lb_timer = null;
			$("#J-lb .btn-prev, #J-lb .btn-next").show();
		}, function(){
			lb_timer = setInterval(function(){
				lb_cur++;
				showLimitBuyProducts();
			}, 10000);
			$("#J-lb .btn-prev, #J-lb .btn-next").hide();
	});
	
});