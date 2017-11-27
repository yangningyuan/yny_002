function activeFooter(i){
	$("#footer").load("footer.html",function(){
		$("#footer li").children("a").removeClass("active")
		$("#footer li").eq(i).children("a").addClass("active")
	});
	
}
$('body').on('touchstart','.goback',function(){
   location.href=window.history.go(-1);
});
function tabContent(obj,id){
	$(obj).addClass('active').parent().siblings().find('a').removeClass('active');
	$(id).siblings(".list").css('display','none');
	$(id).css('display','block');
}
function chooseType(obj){
	$(obj).siblings().find('span').removeClass('active');
	$(obj).find('span').addClass('active');
}
$('.chooseIt').on('click','li',function(){
	$(this).addClass('active').siblings().removeClass('active');
})
