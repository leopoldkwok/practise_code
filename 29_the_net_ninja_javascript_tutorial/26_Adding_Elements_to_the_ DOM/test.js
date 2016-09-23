
// create element
var newLi = document.createElement("li");

newLi
<li>​</li>​

// create element with <a></a>
var newA = document.createElement("a");

newA
<a>​</a>​

var menu = document.getElementById("main-nav").getElementsByTagName("ul")[0];

menu

menu.appendChild(newLi);

<li></li>
newLi.appendChild(newA);

newA.innerHTML = "Blog";

menu.insertBefore(newLi, menu.getElementsByTagName("li")[0]);



//appendChild(child)
//insertBefore(child, element)