$( document ).ready(function() {
   $('.submit').on('click', function(event){
     console.log("does this work?")
     event.preventDefault();
     var data = $("#convert-form").serialize();
     console.log(data);
     $.ajax({
       url: '/convert',
       type: 'POST',
       data: data
     }).done(function(response){
       $('#update').html(response['response']);
       $('#update').removeClass('hidden')
     }).fail(function(failMsg){
       console.error("This will not work!");
     })
   })
});
