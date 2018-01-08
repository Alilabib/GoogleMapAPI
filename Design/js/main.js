/*global $, console,alert */
$(function() {
    'use strict';

    $('#submit').click(function() {
        var add = $('#address').val();
        $.ajax({
            url: "includes/helpers/serve.php",
            type: "POST",
            data: {
                add: add
            },
        }).done(function(data) {
            $("#data").html(data);
        }).fail(function() {
            alert("somthing wrong");
        })
    });

});