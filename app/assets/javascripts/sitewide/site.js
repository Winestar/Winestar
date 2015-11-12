$(function(){
  
  
    //user can only select up to four fields from the like model
    $('#next').click(function() {
      if(($('input[name=like[vineyard_tours]]:checked').length>4) || ($('input[name=like[vineyard_tours]]:checked').length<1))
        {
          alert("Please select a minimum of one with a maximum of four dimensions to add to your trip!")
          event.preventDefault();
        }
    })



});