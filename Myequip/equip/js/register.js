/**
 * Created by web-01 on 2017/12/3.
 */
$(()=>{
   $.ajax({
       type:"get",
       url:"footer.html"
   }).then(data=>{
       $("#footer").html(data);
   });
        $("#uname").blur(e=>{
            var val=$(e.target).val();
            if(val==""){
                $(e.target).siblings("span").html("用户名不能为空").removeClass("msg-default").addClass("msg-error");
            }else{
                //用户名不能重复。。
                checkName($(e.target));
            }
        });
        $("#upwd").blur(e=> {
            var val = $(e.target).val();
            if (val == "") {
                $(e.target).siblings("span").html("密码不能为空").removeClass("msg-success").removeClass("msg-default").removeClass("hidden").addClass("msg-error");
            } else {
                if (val.length >= 6 && val.length <= 12) {
                    $(e.target).siblings("span").html("密码格式正确").removeClass("msg-error").removeClass("msg-default").removeClass("hidden").addClass("msg-success");
                } else {
                    $(e.target).siblings("span").html("密码格式不正确").removeClass("msg-success").removeClass("msg-default").removeClass("hidden").addClass("msg-error");
                }
            }
        });
        $("#upwdconfirm").blur(e=> {
            var val = $(e.target).val();
            if (val == "") {
                $(e.target).siblings("span").html("确认密码不能为空").removeClass("msg-success").removeClass("msg-default").removeClass("hidden").addClass("msg-error");
            } else {
                if ($("#upwd").val() == val) {
                    $(e.target).siblings("span").html("两次密码输入一致").removeClass("msg-error").removeClass("msg-default").removeClass("hidden").addClass("msg-success");
                } else {
                    $(e.target).siblings("span").html("两次密码输入不一致").removeClass("msg-success").removeClass("msg-default").removeClass("hidden").addClass("msg-error");
                }
            }
        });
        $("#email").blur(e=> {
            var val = $(e.target).val();
            if (val == "") {
                $(e.target).siblings("span").html("邮箱不能为空").removeClass("msg-success").removeClass("msg-default").removeClass("hidden").addClass("msg-error");
            } else {
                $(e.target).siblings("span").html("邮箱格式正确").removeClass("msg-error").removeClass("msg-default").removeClass("hidden").addClass("msg-success");
            }
        });
        $("#phone").blur(e=> {
            var val = $(e.target).val();
            if (val == "") {
                $(e.target).siblings("span").html("手机号不能为空").removeClass("msg-success").removeClass("msg-default").removeClass("hidden").addClass("msg-error");
            } else {
                var str = $(e.target).attr("pattern");  //正则表达式不能是字符串，动态生成的表达式需要用new生成
                var reg = new RegExp(str);
                if (val.length > 11) {
                    $(e.target).siblings("span").html("手机号长度不正确").removeClass("msg-default").addClass("msg-error");
                } else if (reg.test(val)) {
                    $(e.target).siblings("span").html("手机号格式正确！").addClass("msg-success");
                } else {
                    $(e.target).siblings("span").html("手机号格式不正确").removeClass("msg-default").addClass("msg-error");
                }
            }
        });
        $("#uname").focus(e=> {
            $(e.target).siblings("span").html("用户名长度在3到12位之间").removeClass("msg-success").removeClass("hidden").removeClass("msg-error").addClass("msg-default");
        });
        $("#upwdconfirm").focus(e=> {
            $(e.target).siblings("span").html("密码长度在6到12位之间").removeClass("msg-success").removeClass("hidden").removeClass("msg-error").addClass("msg-default");
        });
        $("#upwd").focus(e=> {
            $(e.target).siblings("span").html("密码长度在6到12位之间").removeClass("msg-success").removeClass("hidden").removeClass("msg-error").addClass("msg-default");
        });
        $("#email").focus(e=> {
            $(e.target).siblings("span").html("请输入合法的邮箱地址").removeClass("msg-success").removeClass("hidden").removeClass("msg-error").addClass("msg-default");
        });
         $("#phone").focus(e=> {
            $(e.target).siblings("span").html("请输入合法的手机号").removeClass("msg-success").removeClass("hidden").removeClass("msg-error").addClass("msg-default");
        });
    //定义重名验证函数
    function checkName(txt){
        return new Promise(callback=>{
            $.ajax({
                type:"post",
                url:"data/controllers/checkName.php",
                data:{uname:txt.val().trim()}
            }).then(data=>{
                if(data==1){
                    txt.siblings("span").html("用户名已存在！").removeClass("msg-default").removeClass("hidden").addClass("msg-error");
                }else{
                    callback();
                    txt.siblings("span").html("该用户名可以注册！").removeClass("msg-error").removeClass("msg-default").removeClass("hidden").addClass("msg-success");
                }
            })
        })
    }

    $("#bt-register").click(()=>{
    var uname=$("#uname").val();
    var upwd=$("#upwd").val();
    var email=$("#email").val();
    var phone=$("#phone").val();
        var count = 0;
        $('.form-group').each(function () {
            if ($(this).find('span').hasClass('msg-success')) {
                count++;
            }
        });
        if(count==5) {
            checkName($("#uname")).then(()=> {
                $.ajax({
                    type: "post",
                    url: "data/controllers/register.php",
                    data: {uname: uname, upwd: upwd, email: email, phone: phone}
                }).then(data=> {
                    if (data.code > 0) {
                      $("#shadowDiv").show();
											$("#alertMsg").show().css("z-index",1000000);
                      $("html,body").css("overflow","hidden");
	
                    } else {
                        alert(1);
                    }
                })
            })
        }
    });
});