$(document).keyup(function() {
    $('.preview').html($('textarea').val());
});


$(document).ready(function(){
    $('.preview').html($('textarea').val());    
});


function csrfSafeMethod(method) {
    // these HTTP methods do not require CSRF protection
    return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
}
$.ajaxSetup({
    beforeSend: function(xhr, settings) {
        if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
            xhr.setRequestHeader("X-CSRFToken", $("[name=csrfmiddlewaretoken]").val());
        }
    }
});


$('.submit').click(function(){
    console.log('hi');
    $.post('submitpost',
        {
            'body': $('textarea').val(),
            'title': $('.edit-title').val(),
        },
        function (data, status){
            document.write(data);
            document.close();
        }
    ).fail(function(jqXHR, textStatus, errorThrown){
        console.log(errorThrown);
        console.log(jqXHR.responseText);
    });    
});