$(function(){
  
  //jquery validation for the trips form
  $('#trip-submit').click(function(){
    if(
        ($('#trip_arrivals_date').val() === '') || 
        ($('#trip_departure_date').val() === '') ||
        ($('#origin-input').val() === '') ||
        ($('#destination-input').val() === '') ||
        ($('#trip_additional_info').val() === '')
      )
      {
        alert('Please fill out all the fields for your trip.')
        event.preventDefault();
      }
  })

    //user can only select up to four fields from the like model
    $('#next').click(function() {
      if(($('input[name=like[vineyard_tours]]:checked').length>4) || ($('input[name=like[vineyard_tours]]:checked').length<1))
        {
          alert("Please select a minimum of one with a maximum of four dimensions to add to your trip!")
          event.preventDefault();
        }
    })



});