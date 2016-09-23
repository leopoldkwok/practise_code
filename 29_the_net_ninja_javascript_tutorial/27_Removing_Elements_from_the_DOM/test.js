// example based off the net ninja

<nav id="main-nav">
    <h2 id="burger">Menu</h2>
        <ul>
            <li><a href="/Courses">All Courses</a></li>
            <li><a href="/Home/Contact">Contact</a></li>
        <li><a href="/Subjects">Subjects</a></li></ul>
</nav>
   
// code to remove certain elements        
var parent = document.getElementById("main-nav").getElementsByTagName("ul")[0];
undefined
parent

<ul>                    
    <li><a href="/Courses">All Courses</a></li>
    <li><a href="/Home/Contact">Contact</a></li>
    <li><a href="/Subjects">Subjects</a></li></ul>
</ul>

var child = parent.getElementsByTagName("li")[0];

child

<li><a href="/Subjects">Subjects</a></li>
    
var removed = parent.removeChild(child);

// reappend what was removed above
parent.appendChild(removed);

<li><a href="/Subjects">Subjects</a></li>
