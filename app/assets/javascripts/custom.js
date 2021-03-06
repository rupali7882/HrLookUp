$('document').ready(function() {
  setTimeout(function() {
    $('.alert').slideUp();
  }, 3000);

  $("#pictureInput").change(function(){
      $(".upload_profile").submit()
  });

  $("#keywords").blur(function(){
    word = $("#keywords").val()
    if(word.length > 0){
        $(".search-form").submit()
    }
  });

  $('.entitle-content .tabcontent').hide().slice(0, 1).show();
  $( "#datepicker" ).datepicker();


});

function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
