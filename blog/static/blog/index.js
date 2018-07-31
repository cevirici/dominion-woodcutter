function toggle(post){
    $(post).toggleClass("active");
    var expandBar = $(post).find(".post-body-full")
    if (expandBar.attr('compressed') == '0'){
        compress(expandBar);
    } else {
        expand(expandBar);
    }
}


function compress(post){
    var actualHeight = post.prop('scrollHeight');
    var tempTransition = post.css('transition');
    post.css('transition', '');

    requestAnimationFrame(function(){
        post.css('height', actualHeight + 'px');
        post.css('transition', tempTransition);

        requestAnimationFrame(function(){
            post.css('height', '0px');
        });
    });

    $(post).attr('compressed', '1');
    $(post).toggleClass('compressed');
}


function expand(post){
    var actualHeight = post.prop('scrollHeight') + parseInt(post.css('margin-bottom'));
    post.css('height', actualHeight + 'px');
    post[0].addEventListener('transitioned', function(e){
        post[0].removeEventListener('transitioned', arguments.callee);
        post.css('height', null);
    });

    $(post).attr('compressed', '0');
    $(post).toggleClass('compressed');
}