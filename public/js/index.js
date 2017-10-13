!(function ($) {
    $(function () {
        $('#focus-slide').flexslider({
            selector: '.banner-list > li'
        });

        $('#party-slide').flexslider({
            selector: '.thumbnail-list > li',
            directionNav: false
        });

        $('#go-top').on('click', function () {
           $('html,body').animate({
               scrollTop: 0
           }, 300);
        });

        setTimeout(function () {
            $('#travel-tabbar').stickUp({
                parts: {
                    0: 'travel-part-1',
                    1: 'travel-part-2',
                    2: 'travel-part-3'
                },
                itemClass: 'part-link',
                itemHover: 'active',
                topMargin: 0
            });
        }, 0);

        $('#travel-tabbar').find('.part-link').on('click', function (e) {
            e.preventDefault();

            $(document).scrollTop($($(this).attr('href')).offset().top - $('#travel-tabbar').outerHeight());
        })
    });
}(jQuery));