$(document).ready(function(){
    $(".fadesito img").fadeTo("slow", 0.6);

    $(".fadesito img").hover(function(){
        $(this).fadeTo("slow", 1.0); 
    },function(){
        $(this).fadeTo("slow", 0.6);
    });
});