/*
    Created by: Evgeny Todorov
    Last upated: 02/11/23
    Description: setTimeout executing a callback function to revert header five seconds after button press.
*/

let header = document.querySelector("#header");
let button = document.querySelector("#clickedButton");

button.addEventListener("click", changeHeader);

function changeHeader() {
    header.innerHTML = "Working, Please Wait";
    setTimeout(revertHeader, 5000);
    function revertHeader() {
        header.innerHTML = "Waiting";
    }
}