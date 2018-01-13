$(()=>{
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

	$("ul.menu").on("click","li a.ctg",function(e){    //动态实现点击不同的商品类别加载不同的商品详情页
		e.preventDefault();
		var fid=$(this).data("family");
		$.ajax({
			type:"get",
			url:"data/controllers/show_pcategory_controller.php",
			data:{fid:fid}
		}).then(data=>{
			location.href="plane.html?fid="+fid;
		});
	});

	function loadCategoryByFid(jq,fid) {  //定义函数动态加载商品 ？图片未完成
		$.ajax({
			type: "get",
			url: "data/controllers/show_pcategory_controller.php",
			data: {fid: fid}
		}).then(data=> {
			var html="";
				html += `<div class="title clear">`;
				html += `
							<div class="lf"></div>
							<div class="p_head lf">${fid == '1' ? "四轴航拍" + data[fid].category : data[fid].category}
								<span>科技改变生活</span>
							</div>
					`;
				html += `</div>`;
				//首先加载左侧促销大图？？？
				html += `
					<div id="p_list">
							<div id="top_sale">
								<a href="#"><img src=${data[0].lg} alt="" width="250px" height="529px"></a>
							</div>
				`;
				html += `<div id="plane_list"> `;
			for(var obj of data) {
				html += `
						<div>
							<a href="product.html?eid=${obj.eid}"><img src="${obj.md}" alt=""></a>  <!--  图片加载问题？？？？-->
							<h3>${obj.lname}</h3>
							<p class="spec">${obj.title}</p>
							<p>¥<span class="price">${obj.price}</span></p>
						</div>
					`;
			}
			html += `</div></div>`;
			jq.html(html);
		});


	}
	loadCategoryByFid($("#plane"),1);
	loadCategoryByFid($("#car"),2);
	loadCategoryByFid($("#watch"),3);
	loadCategoryByFid($("#vr"),4);
	var picArray=[
		"img/banner/plane.jpg","img/banner/vr.jpg","img/banner/watch.jpg","img/banner/car2.jpg","img/banner/plane2.jpg"
	];
	var i=0;
	var timer=setInterval(function(){
		if(i==picArray.length){
			i=0;
		}
		$("#banner_pic img").attr("src",picArray[i]);
		i++;
	},3000)
	//楼层滚动事件
	$divLift=$("#lift");
	$floors=$(".floor");
	$(window).scroll(()=>{
		var scrollTop=$(window).scrollTop();
		var offsetTop=$("#plane").offset().top;
		if(offsetTop<scrollTop+innerHeight/2)
			$divLift.show();
		else
			$divLift.hide();
		/*移动到该楼层的时候点亮*/
		for(var f of $floors){
			var $f=$(f);
			var offsetTop=$f.offset().top;  //当前元素距页面顶部的偏移量
			if(offsetTop<scrollTop+innerHeight/2){ //滚动超出页面的高度
				var i=$floors.index($f);//找到当前楼层在所有楼层中的编号 ,父元素集合中的第几个
				var $li=$divLift.find(".lift_item:eq("+i+")");
				$li.addClass("lift_item_on").siblings().removeClass("lift_item_on");
			}
		}
	});
//		楼层点击事件，跳转到对应楼层
	$divLift.on("click",".lift_item",function(){
		var $li=$(this);
		if(!$li.is(":last-child")){
			var i=$li.index();//在同一父元素下可省略父元素
			var offsetTop=$floors.eq(i).offset().top;
			//$(window).scrollTop(offsetTop-70);//页面的高度减去头部搜索框的高度即为应该滚动到的高度
			$("body,html").animate({
				scrollTop: $("#header-top").is(".fixed_nav")?offsetTop-81:offsetTop-81-81
			},500);
		}else
			$("body,html").stop(true).animate({
				scrollTop:0
			},500);
	});
});