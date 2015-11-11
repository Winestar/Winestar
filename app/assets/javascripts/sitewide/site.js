$(function(){
  
  
    //user can only select up to four fields from the like model
    $('#next').click(function() {
      if(($('input[name=like[vineyard_tours]]:checked').length>4) || ($('input[name=like[vineyard_tours]]:checked').length<1))
        {
          alert("Please Select Up To 4 that you prefer")
          event.preventDefault();
        }
    })


});