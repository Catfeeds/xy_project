/**
 * Created by Administrator on 2017/12/20 0020.
 */
//轮播图开始
$('.carousel').carousel({
    interval: 2000
});

var myElement= document.getElementById('myCarousel')
var hm=new Hammer(myElement)
hm.on("swipeleft",function(){
    $('#myCarousel').carousel('next');
});
hm.on("swiperight",function(){
    $('#myCarousel').carousel('prev');
});
//项目介绍开始
$(function(){
    $("img[original]").lazyload({ placeholder:"images/color3.gif" });
    $('.demo2').Tabs({
        event:'click'
    });
    
    //部分区域图片延迟加载
    function lazyloadForPart(container) {
        container.find('img').each(function () {
            var original = $(this).attr("original");
            if (original) {
                $(this).attr('src', original).removeAttr('original');
            }
        });
    }
});