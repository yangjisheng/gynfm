/**
 * 主要为了实现文章评价功能
 * add by lcfeng
 */
;
(function($) {
    $.fn.WPVisitCount = function(options) {
        var defaults = {}, $this = $(this), $url = $(this).attr("url");
        var options = $.extend(defaults, options);
        this.each(function() {
            if ($url) {
                initVisitCount();
            }
        });

        //初始化访问次数
        function initVisitCount() {
            $.ajax({
                type: "post",
                dataType: "text",
                url: $url,
                success: function(result) {
                    //alert(result);
                    if (!isNaN(result) && result != 0) {
                        $this.html(result);
                    }
                },
                error: function(error) {
                }
            });
        }
    };
})(jQuery);

$(document).ready(function() {
    $('.WP_VisitCount').WPVisitCount();
}); 