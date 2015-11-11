$(function(){
  

//   judge.validate(document.getElementById('val'), {
//   valid: function(element) {
//     element.style.border = '1px solid green';
//   },
//   invalid: function(element, messages) {
//     element.style.border = '1px solid red';
//     alert(messages.join(','));
//   }
// })

//   judge.validate(document.getElementById('email'), {
//   valid: function(element) {
//     element.style.border = '1px solid green';
//   },
//   invalid: function(element, messages) {
//     element.style.border = '1px solid red';
//     alert(messages.join(','));
//   }
// });
  
//hiding the button
$('#next').click(function() {
if(($('input[name=like[vineyard_tours]]:checked').length>4) || ($('input[name=like[vineyard_tours]]:checked').length<1))
{
alert("Please Select Up To 4 that you prefer")
event.preventDefault();
}
})
});