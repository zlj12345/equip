$(()=>{
    $.ajax({
        type:"get",
        url:"data/controllers/islogin.php"
    }).then(data=>{
        if(data.code<=0){
            $("ul.login_list").show();
            $("ul.welcome_list").hide();
            $("ul.login_list li a.shopping-cart").click(e=>{
                e.preventDefault();
                $(e.target).attr("title","您还未登录，请登录后查看");
            });
        }else{
            $("ul.login_list").hide();
            $("ul.welcome_list").show();
            $("ul.welcome_list span.username").html(data);
            $("ul.welcome_list li a.shopping-cart").click(e=>{
                e.preventDefault();
                location="cart.html?back="+encodeURIComponent(location.href);
            });
        }
    });
    $("a.logout").click(e=>{
        e.preventDefault();
        $.ajax({
            type:"get",
            url:"data/controllers/logout.php"
        }).then(()=>{
            location.href="index.html";
        })
    });
		$("#searchHelp").click(e=>{
			e.preventDefault();
			var kw=$(e.target).siblings("input").val();
			location.href="searchHelp.html?kw="+kw;			
	});
    //固定头部事件
    $(window).scroll(()=>{
        var scrollTop=$(window).scrollTop();
        if(scrollTop>=400)
            $("div.nav").addClass("fixed_nav").css("z-index",10000);
        else
            $("div.nav").removeClass("fixed_nav");
    });

});