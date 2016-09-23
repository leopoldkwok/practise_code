document.forms.myForm
<form data-brackets-id=​"412" id=​"my-form" name=​"myForm" action=​"#">​…​</form>​
var myForm = document.forms.myForm;
undefined
myForm
<form data-brackets-id=​"412" id=​"my-form" name=​"myForm" action=​"#">​…​</form>​
myForm.name
<input data-brackets-id=​"414" type=​"text" name=​"name">​
myForm.value
undefined
myForm.name.value
"Ninja"
myForm.colour.value;
"Red"
myForm.name.onfocus = function() {
 myForm.name.style.border = "4px solid pink";

};
() {
 myForm.name.style.border = "4px solid pink";

}
myForm.name.onblur = function() {
 myForm.name.style.border = "none";

};
() {
 myForm.name.style.border = "none";

}