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
    //定义函数加载不同的商品 ，未完成图片加载的功能
    function showproductByFid(fid) {
        $.ajax({
            type: "get",
            url: "data/controllers/show_pcategory_controller.php",
            data: {fid: fid}
        }).then(data=>{
            var html = "";  //请求加载导航地址
            for(var obj of data) {
                html += `
                    <p>首页&nbsp;/&nbsp;${obj.category}</p>
                `;
            }
            $("div.container").html(html);
            var html="";                      //加载商品内容
            for(var p of data){
                html+=`
                    <li>
					<a href="#"><img src="${p.md}" alt=""></a> <!--图片数据库未完成，功能待定-->
					<h3>${p.lname}</h3>
					<p class="spec">${p.title}</p>
					<p>¥<span class="price">${p.price}</span></p>
				</li>
                `;
            }
            $("#plane_list").html(html);
        })
    }
    //点击不同商品类别加载不同的商品
    var fid=location.href.split("=")[1];
    showproductByFid(fid);
});