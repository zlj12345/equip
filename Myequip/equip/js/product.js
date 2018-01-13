$(function(){
	var eid=location.href.split("=")[1];
	//	加载头部和底部信息
	$.ajax({
		type:"get",
		url:"header.html"
	}).then(data=>{
		$("#header").html(data);
	});
	$.ajax({
		type:"get",
		url:"footer.html"
	}).then(data=>{
		$("#footer").html(data);
	});
	$.ajax({   //加载导航栏
		type:"get",
		url:"data/controllers/getProductHref.php",
		data:{eid:eid}
	}).then(function(data){
		//console.log(data);
		$("#product p.nav span.family").html(data.category);
		$("#product p.nav span.name").html(data.lname);
		
	});

	//加载商品右侧信息栏
	$.ajax({
		type:"get",
		url:"data/routes/getPDetailById.php",
		data:{eid:eid}
	}).then(function(data){
		var html="";
		for(var i=0;i<data.length;i++){
			var obj=data[i];
			html+=`
				<h1>${obj.lname}</h1>
					<p class="price">￥ <span> ${obj.price}</span></p>
					<p class="promise">服务承诺: &nbsp; <span >${obj.promise}</span></p>
					<p class="spec">分类：&nbsp;<span>${obj.category}</span></p>
			`;
		}
		$("#p_detail").html(html);
	});
	$.ajax({
		type:"get",
		url:"data/routes/getPicById.php",
		data:{eid:eid}
	}).then(function(data){
		var md=data[0].md;
		$("#md").attr("src",md);
		var lgurl="url("+data[0].lg+")";
		$("#largeDiv").css("background-image",lgurl);
		var html="";
		for(var p of data){
			html+=`
				<li>
					<img src=${p.sm} data-md=${p.md} data-lg=${p.lg} alt=""/>
				</li>
			`;
		}
		$("#icon_list").html(html);

		/*以下是小图的左右按钮点击事件*/
		var aBackward=$("#smallPic>h1>a:nth-child(1)");
		var aForward=aBackward.siblings("a.forward");
		if(data.length<=4){
			aForward.addClass("disabled");
		}
		var moved=0,LIWIDTH=70;
		aForward.click(e=>{
			if(!$(e.target).is(".disabled")){
				moved++;
				$("#icon_list").css("left",-moved*LIWIDTH+20);
				if(moved>0){
					aBackward.removeClass("disabled");
				}
				if(moved==data.length-4){
					aForward.addClass("disabled");
				}
			}
		});
		aBackward.click(e=>{
			if(!$(e.target).is(".disabled")){
				moved--;
				$("#icon_list").css("left",-moved*LIWIDTH+20);
			}
			if(moved<data.length-4){
				aForward.removeClass("disabled");
			}
			if(moved==0){
				aBackward.addClass("disabled");
			}
		});
		//以下是点击切换小图中图大图的事件
		$("#icon_list").mouseover(e=>{
			if(e.target.nodeName=="IMG"){
				var md=$(e.target).data("md");
				var lg=$(e.target).data("lg");
				$("#md").attr("src",md);
				$("#largeDiv").css("background-image","url("+lg+")");
			}
		});
		$("#supermask").mouseover(e=>{
			$("#mask").show();
			$("#largeDiv").show();
		});
		$("#supermask").mouseout(e=>{
			$("#mask").hide();
			$("#largeDiv").hide();
		});
		var MSIZE=160;
		//放大镜鼠标移动事件
		$("#supermask").mousemove(e=>{
			var x=e.offsetX;
			var y=e.offsetY;
			var left=x-MSIZE/2;
			var top=y-MSIZE/2; //以点击的地方为中心形成mask的宽高
			if(left<0) left=0;
			else if(left>160) left=160;  //中图320，320-mask=left边界值
			if(top<0) top=0;
			else if(top>160) top=160;
			$("#mask").show().css({left:left+"px",top:top+"px"});
			$("#largeDiv").css("background-position",(-5/2)*left+"px "+(-5/2)*top+"px");
			//大图大小800*800，中图大小320*320，比例800/320
		});
	});
	//加入购物车功能
	$("#cart").on("click","a.addCart",function(e){
		e.preventDefault();
		//需要判断是否登录？？？？才继续执行以下操作
		$.get("data/controllers/islogin.php")
			.then(data=>{
			if(data.code<0){
				$("#shadowDiv").show();
				$("#alertMsg").show().css("z-index",1000000);
				$("html,body").css("overflow","hidden");
			}else{
				$("#success_cart").show();
				var x=-55;
				var timer=setInterval(function(){
					if(x>=0){clearInterval(timer);}
					$("#success_cart").css("bottom",x);
					x+=7;
				},50);
				var count=$(this).siblings("p").children("input").val();
				$.ajax({
					type:"post",
					url:"data/routes/cart/addToCart.php",
					data:{eid:eid,count:count}
				})
			}
		});
	});
	//关闭按钮事件
	$("#success_cart>a.close").click(function(){
		$(this).parent().hide();
	});
	//商品数量增减事件
	$("#cart p").on("click","button",function(e){
		e.preventDefault();
		var n=$(this).siblings("input[type=text]").val();
		if($(e.target).is(".add"))
			n++;
		else if(n>1)
			n--;
		$(this).siblings("input[type=text]").val(n);
	});
	//下方 相关商品 列表
	var LIWIDTH=160,INTERVAL=500,WAIT=2000,moved=0,timer=null,canMove=true;
	$ulImgs=$("#p_relative");
	$.ajax({
		type:"get",
		url:"data/controllers/showRelatives.php",
		data:{eid:eid}
	}).then(data=>{
			var html="";
			for(var obj of data){
				html+=`
					<li>
						<a href="product.html?eid=${obj.eid}">
							<img src="${obj.sm}" alt="" title="${obj.lname}"/>
						</a>
						<p class="name"><a href="#">${obj.lname}</a></p>
						<p>¥<span>${obj.price}</span></p>
					</li>
				`;
			}
			html+=`
					<li>
						<a href="product.html?eid=${obj.eid}">
							<img src="${data[0].sm}" alt="" title="${data[0].lname}"/>
						</a>
						<p class="name"><a href="#">${data[0].lname}</a></p>
						<p>¥<span>${data[0].price}</span></p>
					</li>
			`;
			$ulImgs.html(html).css("width",(data.length+1)*LIWIDTH);
			function autoMove(){
				if(moved==2){
					moved=0;
					$ulImgs.css("left",0);
				}
				if(canMove){
					timer=setTimeout(()=>{
						move(1,autoMove);
					},WAIT);
				}
			}
			autoMove();
			function move(dir,callback){
				moved+=dir;
				$ulImgs.stop(true).animate({
					left:-moved*LIWIDTH
				},INTERVAL,callback);
			}
			$("#relative").hover(
				()=>{
				canMove=false;
				clearTimeout(timer);
				timer=null;
				},
				()=>{
					canMove=true;
					autoMove();
				}
			);
		});


});