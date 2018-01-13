$(()=>{
    //导入头部与底部文件
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
    //导入主要内容
    function loadPageByPno(pno) {
        $.ajax({
            type: "get",
            url: "data/routes/dynamic.php",
            data: {pno: pno}
        }).then(data=> {
            var html = "";
            var obj = data.data;
            for (var p of obj) {
                html += `
                    <li class="clear">
                                <div class="lf">
                                    <img src=${p.pic} alt="" title="${p.title}">
                                </div>
                                <div class="lf spec">
                                    <p class="title">${p.title}</p>
                                    <p>发布日期：<span>${p.pubdate}</span> 分类：${p.category} </p>
                                    <p>${p.detail}</p>
                                </div>
                            </li>
                `;
            }
            var pno=parseInt(data.pno);
            var totalPage=parseInt(data.totalPage);
            $("[data-news=dynamic]").html(html);
            var y=0;   //每隔400毫秒调用一次动画，并实现先后顺序加载动画
            setInterval(function(){
                animate(y);
                y++;
            },400);

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
        });
    }


    loadPageByPno(1);
    $("#pagination").on("click","li a",function(e){
        e.preventDefault();
        var pno=$(this).html();
        loadPageByPno(pno);
    });
    //加载动画
    function animate(y){
          var x=300;
            var timer=setInterval(function(){
                if(x>=0) {
                    $("[data-news=dynamic] li").eq(y).css("left",x).fadeIn(700);
                    x -=10;
                }else{
                    clearInterval(timer);
                }

            },20);
    }
});