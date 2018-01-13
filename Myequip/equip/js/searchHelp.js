$(()=>{
//	加载头部和底部
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
	//加载所有商品
	var kw=location.search.split("=")[1];
			kw=decodeURI(kw);
	function loadProductByKw(pno){
		$.ajax({
			type:"get",
			url:"data/controllers/searchHelper.php",
			data:{kw:kw,pno:pno}
		}).then(data=>{
			var pro=data.data;
			var html="";
			for(var obj of pro){
				html+=`
							<li>
                <a class="show-pic" href="product.html?eid=${obj.eid}">
                  <img src="${obj.md}" alt="">
                </a>
                <h2>${obj.lname}</h2>
                <p>
                  ¥ <span class="price">${obj.price}</span>
                </p>
                <a class="detail" href="product.html?eid=${obj.eid}">查看详情</a>
              </li>
					`;
			}
			$("#show-list").html(html);
			var pno=parseInt(data.pno);
			var totalPage=parseInt(data.totalPage);
			var html="";    //设置分页显示的总页数
			if(pno-2>0){
				html+=`<li><a href='#'>${pno-2}</a></li>`;
			}
			if(pno-1>0){
				html+=`<li><a href='#'>${pno-1}</a></li>`;
			}
				html+=`<li class='active'><a href='#'>${pno}</a></li>`;
			if(pno+1<=totalPage){
				html+=`<li><a href='#'>${pno+1}</a></li>`;
			}
			if(pno+2<=totalPage){
				html+=`<li><a href='#'>${pno+2}</a></li>`;
			}
			$("#pagination").html(html);
		})
	}
	loadProductByKw(1);
	$("#pagination").on("click","li a",function(e){
		e.preventDefault();
		var pno=$(this).html();
		loadProductByKw(pno);
	});

});