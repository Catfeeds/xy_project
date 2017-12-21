/**
 * Created by Administrator on 2017/12/20 0020.
 */


$(document).ready(function(){

    $('.carousel').carousel({
        interval: 3000
    })
    //轮播图开始

    var myElement= document.getElementById('myCarousel')
    var hm=new Hammer(myElement)
    hm.on("swipeleft",function(){
        $('#myCarousel').carousel('next');
    });
    hm.on("swiperight",function(){
        $('#myCarousel').carousel('prev');
    });

})
