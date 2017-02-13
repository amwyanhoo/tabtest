function showMask(basePath){
    $(document.body).append('<div id="top_mask"  style="display:none"><img id="mask_gif" src="'+basePath+'/static/js/mask/l.gif"></img></div>');
    $("#top_mask").css({"position":"absolute","top":"0px","filter":"alpha(opacity=60)",
    	                "background-color":"#777","z-index":"9999","left":"0px","opacity":"0.5",
    	                "-moz-opacity":"0.5","text-align":"center"}); 
    $("#top_mask").css("height",$(document).height());     
    $("#top_mask").css("width",$(document).width());
    $("#mask_gif").css("margin-top",parseInt($("#top_mask").css("height"))/2);
    $("#top_mask").show();
    $(window).resize(function(){
    	$("#top_mask").css("height",$(document).height());     
        $("#top_mask").css("width",$(document).width());
        $("#mask_gif").css("margin-top",parseInt($("#top_mask").css("height"))/2);
    });
}  
function hideMask(){ 
    if($("#top_mask").length!=0){
    	$("#top_mask").remove();
    }
}