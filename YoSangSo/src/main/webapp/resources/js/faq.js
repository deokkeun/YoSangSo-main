

$(document).ready(function(){
    $('ul.tap-list li').click(function(){
       
        var tab_id = $(this).attr('data-tab');
        
        $('ul.tap-list li').removeClass('current');
        $('.faq-contents').removeClass('current');
        
        $(this).addClass('current');
        $("#" + tab_id).addClass('current');
    })
});