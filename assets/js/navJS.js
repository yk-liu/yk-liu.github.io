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
	
	/* When the user scrolls down, hide the navbar. When the user scrolls up, show the navbar */
	/* When the user scrolls down, hide the back to top btn. When the user scrolls up, show the btn */
	
	var prevScrollpos = window.pageYOffset;
	window.onscroll = function() {
	  var currentScrollPos = window.pageYOffset;
	  if (prevScrollpos > currentScrollPos) {
		document.getElementById("topnav").style.top = "0";
		document.getElementById("BackToTop").style.display = "block";
	  } else {
		document.getElementById("topnav").style.top = "-50px";
		document.getElementById("BackToTop").style.display = "none";
	  }
	  prevScrollpos = currentScrollPos;
	}
		
