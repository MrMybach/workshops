//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
    var count = 7,
        counter = setInterval(timer, 1000);

    $('.js-fade-out-msg').append('<small class="timer pull-right"></small>');

    function timer() {
        count = count - 1;

        if (count <= 0) {
            clearInterval(counter);
            $('.js-fade-out-msg').fadeOut('fast');
            return;    
        }

        $('.timer').text(count + ' sec left to close.');
    }
});