$(document).ready(function() {
  $(document).on("submit", "#exercise-button", function(event){
    // $("#pipe-photo").show(slow);
    // make ajax request to my server
    //  in server do actual get from api
    var url = $(this).attr("action");
    var method = $(this).attr("method");
    $.ajax({
      method: method,
      url: url
    }).done(function(response){
      $(".exercise-list").prepend(response);
      // $("#new-poem-form").find("input[type=text], textarea").val(" ");
    }).fail(function(response){
      console.log("fail");
    });
  });
  });
});
