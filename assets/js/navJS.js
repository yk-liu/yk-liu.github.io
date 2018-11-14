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
    var x = document.getElementById("TOCBtn");
    if (x.style.display === "none") {
        x.style.display = "inline-block";
        document.getElementById("main").style.marginLeft = "24%";
    } else {
        x.style.display = "none";
        document.getElementById("main").style.marginLeft = "6%";
    }
	
	/* When the user scrolls down, hide the navbar. When the user scrolls up, show the navbar */
	var prevScrollpos = window.pageYOffset;
	window.onscroll = function() {
	  var currentScrollPos = window.pageYOffset;
	  if (prevScrollpos > currentScrollPos) {
		document.getElementById("topnav").style.top = "0";
	  } else {
		document.getElementById("topnav").style.top = "-50px";
	  }
	  prevScrollpos = currentScrollPos;
	}
		
}