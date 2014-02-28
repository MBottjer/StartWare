# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

var elemm = document.getElementById('bespoke')
  elemm.onclick = function() { 
    // $('.example-orbit').fadeOut();
    $('.example-orbit').empty();
      getJsonViaAjax("http://localhost:3000/home/index.json", 2)
   };

});

function getJsonViaAjax(url, category_id){
  $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function(result) {
                result = result.products

                iterateThroughPhotos(result, category_id)
            }
        });
}

function iterateThroughPhotos(result, category_id){
    var slide_number = 1
    for (object in result) {
        if (result[object].category === category_id) {

          appendOrbitSlider(result, slide_number)
        slide_number += 1
      }
    }
}

function appendOrbitSlider(result, slide_number) {

    $('.example-orbit').append(
              "<li>" + "<img src=" + result[object].photo + " alt='slide " + slide_number +"'/>" + "<div class='orbit-caption'>" + result[object].description + "</div>" + "</li>"
    );
}