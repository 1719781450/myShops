<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}

.fold_wrap{width:950px;height:260px;margin:40px auto 0 auto;overflow:hidden;}
.fold_wrap li{float:left;width:130px;height:260px;position:relative;overflow:hidden;cursor:pointer;}
.fold_wrap li .mask_b{position:absolute;overflow:hidden;width:100%;height:100%;left:0;top:0;background:rgba(0,0,0,.3);_background:#B2B2B2;}
.fold_wrap li.active .mask_b{background:none;}
.fold_wrap li .mask_b h4{color:#fff;width:30px;margin:0 auto;display:block;font:30px/30px Microsoft Yahei;position:relative;padding:30px 0 0 0;}
.fold_wrap li.big{width:322px;}
.fold_wrap li .adv_intro{ width:92%; height:40px; padding:5px 4%; position:absolute;left:0; bottom:-50px;background:#37D; color:#FFF; overflow:hidden;}
.adv_intro_show{bottom:0 !important; transition:bottom 0.3s linear 0.3s; -webkit-transition:bottom 0.3s linear 0.3s;}

.pic_auto{width:100%;height:100%;}
.pic_auto1{background:url(${pageContext.request.contextPath}/images/shoufengqin/20150120_ifold1.jpg) no-repeat center 0;}
.pic_auto2{background:url(${pageContext.request.contextPath}/images/shoufengqin/20150120_ifold2.jpg) no-repeat center 0;}
.pic_auto3{background:url(${pageContext.request.contextPath}/images/shoufengqin/20150120_ifold3.jpg) no-repeat center 0;}
.pic_auto4{background:url(${pageContext.request.contextPath}/images/shoufengqin/20150120_ifold4.jpg) no-repeat center 0;}
.pic_auto5{background:url(${pageContext.request.contextPath}/images/shoufengqin/20150120_ifold5.jpg) no-repeat center 0;}
.pic_auto6{background:url(${pageContext.request.contextPath}/images/shoufengqin/20150120_ifold6.jpg) no-repeat center 0;}
.pic_auto7{background:url(${pageContext.request.contextPath}/images/shoufengqin/20150120_ifold7.jpg) no-repeat center 0;}
</style>


<ul class="fold_wrap" id="sm">
	<li>
		<a href="http://sc.chinaz.com/">
			<div class="mask_b"><h4>温泉酒店</h4></div>
			<div class="pic_auto pic_auto1"></div>
			<div class="adv_intro">有谁不爱泡温泉？浸入雾气蒸腾的泉水之中，把身体泡成一片茶叶，舒展轻盈。有比这更美妙的感觉吗？</div>
		</a>
	</li>
	<li>
		<a href="http://sc.chinaz.com/">
			<div class="mask_b"><h4>情侣酒店</h4></div>
			<div class="pic_auto pic_auto2"></div>
			<div class="adv_intro">浪漫，是香闺围笼里的暧昧，是灯火迷离，泪眼婆裟的唯美，是杨柳岸、晓风残月中的无语凝噎……</div>
		</a>
	</li>
	<li>
		<a href="http://sc.chinaz.com/">
			<div class="mask_b"><h4>设计师酒店</h4></div>
			<div class="pic_auto pic_auto3"></div>
			<div class="adv_intro">前卫的酒店设计理念，独具魅力的风格，优美的自然风光才能有这样顶级的酒店。</div>
		</a>
	</li>
	<li>
		<a href="http://sc.chinaz.com/">
			<div class="mask_b"><h4>青年旅舍</h4></div>
			<div class="pic_auto pic_auto4"></div>
			<div class="adv_intro">我为你煮一杯温茶，斟一杯美酒。让我们席地而坐，听你的梦想。用你的只言片语装点我们的梦想博物馆。</div>
		</a>
	</li>
	<li>
		<a href="http://sc.chinaz.com/">
			<div class="mask_b"><h4>特色客栈</h4></div>
			<div class="pic_auto pic_auto5"></div>
			<div class="adv_intro">在这里，你可以静静发呆，而不被人打扰，只用细细品味它的美好；在这里，你能看见最美好的星星，能让你找到最深的感动。</div>
		</a>
	</li>
</ul>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
(function(){
       
var slideMenu=function(){
  var sp,st,t,m,sa,l,w,gw,ot;
  return{
    destruct:function(){
        if(m){
          clearInterval(m.htimer);
          clearInterval(m.timer);
        }
    },
    build:function(sm,sw,mt,s,sl,h){
      sp=s; 
      st=sw; 
      t=mt;
      m=document.getElementById(sm);
      sa=m.getElementsByTagName('li');
      l=sa.length; 
      w=m.offsetWidth; 
      gw=w/l;
      ot=Math.floor((w-st)/(l-1)); 
      var i=0;
      for(i;i<l;i++){
        s=sa[i]; 
        s.style.width=gw+'px'; 
        this.timer(s)
      }
      if(sl!=null){
        m.timer=setInterval(function(){
          slideMenu.slide(sa[sl-1])
        },t)}
    },
    timer:function(s){
      s.onmouseover=function(){
        clearInterval(m.htimer);
        clearInterval(m.timer);
        m.timer = setInterval(function(){
          slideMenu.slide(s)
        },t);
        //console.log($(this).find('.mask_b').html());
        $(this).find('.mask_b').hide();
        //console.log($(this).find('.mask_b').attr("style"));
    }
      s.onmouseout=function(){
        clearInterval(m.timer);
        clearInterval(m.htimer);
        m.htimer=setInterval(function(){
          slideMenu.slide(s,true)
        },t);
        //console.log($(this).find('.mask_b').html());
       $(this).find('.mask_b').show();
       //console.log($(this).find('.mask_b').attr("style"));
     }
    },
    slide:function(s,c){
      var cw=parseInt(s.style.width);
      if((cw<st && !c) || (cw>gw && c)){
        var owt=0; var i=0;
        for(i;i<l;i++){
          if(sa[i]!=s){
            var o,ow; var oi=0; o=sa[i]; ow=parseInt(o.style.width);
            if(ow<gw && c){
              oi=Math.floor((gw-ow)/sp); 
              oi=(oi>0)?oi:1; 
              o.style.width=(ow+oi)+'px';
              //console.log(o);
            //console.log(o.style.width);
            }else if(ow>ot && !c){
              oi=Math.floor((ow-ot)/sp); 
              oi=(oi>0)?oi:1; 
              o.style.width=(ow-oi)+'px';
              //console.log(o);
              //console.log(o.style.width);
            }
            if(c){
              owt=owt+(ow+oi)
            }else{
              owt=owt+(ow-oi)
            }
          }
        }
        s.style.width=(w-owt)+'px';
      }else{
        if(m.htimer)
          clearInterval(m.htimer)
        if(m.timer)
          clearInterval(m.timer);
      }
    }
  };
}();
slideMenu.build('sm',400,10,10,1);
})();
</script>

