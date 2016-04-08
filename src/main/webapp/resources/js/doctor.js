$(window).load(function () {
    $('.post-module').hover(function () {
        $(this).find('.description').stop().animate({
            height: 'toggle',
            opacity: 'toggle'
        }, 300);
    });
    $(".column").click(function() {
    	doctor_id = $(this).data("id");
    	window.location = "team_doctor_info.do?doctor_id="+doctor_id;
    });

}); 


