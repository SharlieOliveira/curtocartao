//= require bootstrap.min

$(document).ready(function($){

  $(".recharge_submit").click(function(){
    var current_modal = $(this).parents(".modal");
    var url = current_modal.data("url");

    $.post(url, function(data) {
      $("#saldo-f").html(data.saldo);
      current_modal.modal("hide");
    });
  });

  $('#submit-consumption').click(function(){
    $(this).attr("disabled", "disabled");
    $('#consumption-form').submit();
  });
});
