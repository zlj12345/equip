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
    var map = new BMap.Map("box");
    // 创建地图实例
    var point = new BMap.Point(120.678164,31.301968);
    // 创建点坐标
    map.centerAndZoom(point, 15);
    // 初始化地图，设置中心点坐标和地图级别
    map.addControl(new BMap.NavigationControl());
    map.addControl(new BMap.ScaleControl());
    map.addControl(new BMap.OverviewMapControl());
    map.addControl(new BMap.MapTypeControl());
});