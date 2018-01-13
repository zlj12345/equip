$(()=>{
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
	//判断是否登录
	$.get("data/controllers/islogin.php")
		.then(data=> {
			if (data.ok <0)
				location = "login.html?back=" +	encodeURIComponent(location.href);
			loadCart();
		});
	//加载购物车
	function loadCart() {
		//加载购物车所有商品 ---成功
		$.get("data/routes/cart/getCart.php")
			.then(data=> {
				var html = "";
				for (var p of data) {
					html += `
					<div class="imfor">
						<div class="check">
							<img src="${parseInt(p.is_checked)==1?
							'img/cart/product_true.png':
							'img/cart/product_normal.png'
						}" alt="${p.iid}">
						</div>
						<div class="product">
							<a href="product.html?eid=${p.eid}">
								<img src="${p.sm}" alt="">
							</a>
							<span class="desc">
								<a href="product.html?eid=${p.eid}">${p.title}</a>
							</span>
						</div>
						<div class="price">
							<p class="price-desc">商品专享价</p>
							<p>
								<b>￥</b>${p.price}
							</p>
						</div>
						<div class="num">
							<span class="reduce">&nbsp;-&nbsp;</span>
							<input data-iid=${p.iid} type="text" value="${p.count}">
							<span class="add">&nbsp;+&nbsp;</span>
						</div>
						<div class="total-price">
							<span>￥</span>
							<span>${(p.price * p.count).toFixed(2)}</span>
						</div>
						<div class="del">
							<a href="#" data-iid="${p.iid}">删除</a>
						</div>
					</div>
				`;
				}
				var $content = $("#content-box-body");
				$content.html(html);
				setTimeout(()=> {
					 getTotal();
					 chkAll()
				 }, 100);
				 //全选状态与底部保持一致
				function chkAll() {
					var $checkTop = $(".check-top>img");
					var $content = $("#content-box-body");
					$checkTop.attr("src", $content.find(".check>img[src$='normal.png']").length == 0 ?
							"img/cart/product_true.png" :
							"img/cart/product_normal.png"
					);
				}

				var $checkTop = $(".check-top>img"); //顶部全选框
				$checkTop.off("click").click(()=> {
					if ($checkTop.attr("src").endsWith("normal.png")) {
						$checkTop.attr("src", "img/cart/product_true.png");
						$.post(
							"data/routes/cart/selectAll.php",
							"chkAll=1"
						).then(()=> {
								loadCart();
							});
					} else {
						$checkTop.attr("src", "img/cart/product_normal.png");
						$.post(
							"data/routes/cart/selectAll.php",
							"chkAll=0"
						).then(()=> {
								loadCart();
							});
					}
				});
				 //点击切换全选按钮的图片  ---成功

						//单个图片选定按钮的点击事件
				$content.off("click").on("click", ".check>img", e=> {
					 var $tar = $(e.target);
					 var iid = $tar.attr("alt");
					 if ($tar.attr("src").endsWith("normal.png")) {
					 	$tar.attr("src", "img/cart/product_true.png");
						 //console.log(1);
						 $.ajax({
							 type: "post",
							 url: "data/routes/cart/selectOne.php",
							 data: {chkOne: 1, iid: iid}
						 }).then(()=> {
							loadCart();
						 });
					 }
					 else {
					 	$checkTop.attr("src", "img/cart/product_normal.png");  //取消勾选状态
						 $.ajax({
							 type: "post",
							 url: "data/routes/cart/selectOne.php",
							 data: {chkOne: 0, iid: iid}
						 }).then(()=> {
							loadCart();
						 });
					 }
				 })
				 .on("click", ".reduce,.add", e=> {
					 var $tar = $(e.target);
					 var $input = $tar.siblings("input");
					 var n = parseInt($input.val());
					 if ($tar.is(".add")) {
					 	n++;
					 }
					 else
					 	n--;
					 if (n == 0) {
						 if (confirm("是否继续删除?"))
							 $.get("data/routes/cart/updateCart.php", "count=" + n + "&iid=" + $input.data("iid")
								).then(()=> {
									loadCart();
								 })
					 }else
						 $.get("data/routes/cart/updateCart.php", "count=" + n + "&iid=" + $input.data("iid")
						 ).then(()=> {
						 	loadCart();
						 });

				 })
				.on("click",".del>a",e=>{
						var $tar=$(e.target);
						var iid = $tar.data("iid");
						e.preventDefault();
						if(confirm("是否确认删除？")){
							$.get("data/routes/cart/updateCart.php", "count=0&iid=" +iid
							).then(()=> {
									loadCart();
								})
						}
					})
			});


				 var $counts = $("#shopping-cart .total,#shopping-cart .totalOne");
				 var $totals = $("#shopping-cart .totalPrices,#shopping-cart .foot-price");

				 function getTotal() {
					 var $rows = $(".imfor:has(.check>img[src$='true.png'])");
					 var $inputs = $rows.find(".num>input");
					 var $subs = $rows.find(".total-price>:last-child");
					 var count = 0;
					 var total = 0;
					 for (var input of $inputs) {
						 count += parseInt($(input).val());
					 }
					 for (var sub of $subs) {
						 total += parseFloat($(sub).html());
					 }
					 $counts.html(count);
					 $totals.html(total);
				}

	}

});


