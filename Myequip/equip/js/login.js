/**
 * Created by web-01 on 2017/12/2.
 */
$(()=>{
    //加载尾部信息
    $.ajax({
        type:"get",
        url:"footer.html"
    }).then(data=>{
        $("#footer").html(data);
    });
   /* var upwd=$("#upwd").val();
    var uname=$("#uname").val();
    console.log(upwd);
    console.log(uname);  无法获取到数据？？？？
    */
    $("#bt-login").click(()=>{
        $.ajax({
            type:"post",
            url:"data/controllers/login.php",
            data:$("#form-login").serialize()
        }).then(data=>{
            if(data.code<0){
                $(".tip").html(data.msg);
            }else {
                if (location.search !== "") {
                console.log(location.search);
                location = decodeURIComponent(location.search.slice(6));
            }
                  //如果cart.html带着back参数过来,可以直接跳转回原来的界面
                else
                location="index.html";
            }
        })
    });
//自动登录功能
   /* if($("ck_rmbUser").is(":checked")){
        sessionStorage["uname"]=$("#uname").val();
        sessionStorage["upwd"]=$("#upwd").val();
    }
    */
});