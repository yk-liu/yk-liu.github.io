
<script>

 var string = document.getElementById("learn").innerHTML; 
 var result = string.replace(/white/gi, "black");
 document.getElementById("learn").innerHTML = result;

</script>

var string = "This is bitdegree.org!";
var siteurl = "{page.url}"
var page_real_name = siteurl.replace("https://yk-liu.github.io","")
var page_real_name = siteurl.replace("https://yk-liu.github.io","")

var result = string.replace("<img = ' ", "<img src=\"https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-08-20-One-Forms/");

// convert all local img to raw.github to comply with kramdown
// replace "<img = ' ", "<img src=\"https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts"
// and replace {{ page.url}} 
// (which is "https://yk-liu.github.io/2018/08/20/One-Form") to "2018-08-20-One-Forms" : remove "...github.io/" & replace / to -
// and put that behind
string.replace("<img = ' ", "<img src=\"https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/");
string2="{page.url}".replace("https://yk-liu.github.io/","")
string2.replace("///g","/-")

add "/" to the tail
// convert all in-page reference to lower case, comply with kramdown
// replace )[#latters-and-hypens]) to lowercase
var string = "It's around August AND THEN I get an email",

var modified = string.replace(")]#/\b[A-Z]{2,}\b/g", function(match) {
    return match.toLowerCase();
});

console.log(modified);

// highlight support

//mermaid support
<script src="/assets/js/mermaid.full.min.js"></script>
<script>mermaid.initialize({startOnLoad:true});</script>
<div class="mermaid">
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
</div>

