   // When the user scrolls down 20px from the top of the document, show the button
   window.onscroll = function() {scrollFunction()};

   function scrollFunction() {
       if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
           document.getElementById("BackToTopBtn").style.display = "block";
       } else {
           document.getElementById("BackToTopBtn").style.display = "none";
       }
   }

   // When the user clicks on the button, scroll to the top of the document
   function topFunction() {
       document.body.scrollTop = 0;// For Safari
       document.documentElement.scrollTop = 0;// For Chrome, Firefox, IE and Opera
   }
   
   function ToggleTOC() {
    var x = document.getElementById("mySidenav");
    if (x.style.display === "none") {
        x.style.display = "inline-block";
        document.getElementById("main").style.marginLeft = "24%";
    } else {
        x.style.display = "none";
        document.getElementById("main").style.marginLeft = "6%";
    }
}