(function () {

  var config = {
    headerCollapsibleActive: true,
    headerNumber: true,
    readingProgressBar: true,
  }

  function headerCollapsible(){

    if (!config.headerCollapsibleActive) return;

    $.headerCollapseRobot(
      arr_Id_CollapseEnds =  new Array("content-end"),
      arr_Collapsible_Tag = new Array("H1","H2","H3","H4","H5","H6"),
      arr_ExcludeElemPrefix_InCollapsible  = new Array("comment-"),
      arr_ExcludeElemPrefix_InCollapsing = new Array("sidebar-toc-Ik4D-")
      )
  }

  function headerNumber(postContentDivID) {

    if (!config.headerNumber) return;

    var headerIndex = [0,0,0,0,0,0];  /*for h1,h2,h3,h4,h5,h6*/
    $('#'+postContentDivID).find('h1:not(blockquote h1),h2:not(blockquote h2),h3:not(blockquote h3),h4:not(blockquote h4),h5:not(blockquote h5),h6:not(blockquote h6)').each(function(index, el) {

      if ($(el).is('H1')) {
        $(el).text( (++headerIndex[0])+'. '+$(el).text());
        headerIndex[1]=0;
      }else if ($(el).is('H2')) {
        $(el).text( headerIndex[0]+'.'+ (++headerIndex[1])+'. '+$(el).text());
        headerIndex[2]=0;
      }else if ($(el).is('H3')) {
        $(el).text( headerIndex[0]+'.'+ (++headerIndex[1])+'.'+ (++headerIndex[2])+'. '+$(el).text());
        headerIndex[3]=0;
      }else if ($(el).is('H4')) {
        $(el).text( headerIndex[0]+'.'+ (++headerIndex[1])+'.'+ (++headerIndex[2])+'.'+ (++headerIndex[3])+'. '+$(el).text());
        headerIndex[4]=0;
      }else if ($(el).is('H5')) {
        $(el).text( headerIndex[0]+'.'+ (++headerIndex[1])+'.'+ (++headerIndex[2])+'.'+ (++headerIndex[3])+'.'+ (++headerIndex[4])+'. '+$(el).text());
        headerIndex[5]=0;
      }else if ($(el).is('H6')) {
        $(el).text( headerIndex[0]+'.'+ (++headerIndex[1])+'.'+ (++headerIndex[2])+'.'+ (++headerIndex[3])+'.'+ (++headerIndex[4])+'.'+ (++headerIndex[5])+'. '+$(el).text());
      }
    });
  }

  function initReadingProgressBar() {

    if (!config.readingProgressBar) {
       $('div#reading-progress').hide();
       return;
    }

  $(window).bind('scroll', function() {
    var percent = $(window).scrollTop()/($('body').height()-$(window).height())
    $('div#reading-progress').find('.progress-bar').css('width',percent*100+'%')
  });
}


  $(document).ready(function(){
      $('#toc').toggleClass('hidden-xl-down');
      $('#sidebar-wrapper nav a').click(function (e) {
          e.preventDefault()
          $(this).tab('show')
      })
      toc('sidebar-toc-content');
      headerNumber('post-content');
      $('#toc').trigger('click');
      initReadingProgressBar();
      lightbox();
  });





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

} ());