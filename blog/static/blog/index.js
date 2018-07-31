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

    requestAnimationFrame(function(){
        post.css('height', actualHeight + 'px');

        requestAnimationFrame(function(){
            post.css('height', '0px');
            post[0].addEventListener('transitionend', function(e){
                post[0].removeEventListener('transitionend', arguments.callee);
                $(post).addClass('compressed');
            });
        });
    });

    $(post).attr('compressed', '1');
}


function expand(post){
    var actualHeight = post.prop('scrollHeight') + parseInt(post.css('margin-bottom'));
    post.css('height', actualHeight + 'px');
    post[0].addEventListener('transitionend', function(e){
        post[0].removeEventListener('transitionend', arguments.callee);
        post.css('height', '');
    });

    $(post).attr('compressed', '0');
    $(post).removeClass('compressed');
}


const psmain = new PerfectScrollbar('.scroll-container', {suppressScrollX:true});

$(window).resize(function(){
    psmain.update();
})