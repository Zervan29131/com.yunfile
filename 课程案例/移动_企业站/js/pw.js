(function(window, PhotoSwipe){

  document.addEventListener('DOMContentLoaded', function(){
  
    var
      options = {},
      instance = PhotoSwipe.attach( window.document.querySelectorAll('#Gallery a'), options );
  
  }, false);
  
  
}(window, window.Code.PhotoSwipe));