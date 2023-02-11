/*
    Created by: Evgeny Todorov
    Last upated: 02/11/23
    Description: Javascript array/list, function to add items to it, function to display items, a display button event listener,
    and an input button event listener along with access to an input text field selector.
*/

let yourHobbies = [];
let displayButton = document.querySelector("#hobbies-output");
let inputTextField = document.querySelector("#hobbies-input-text");
let inputButton = document.querySelector("#hobbies-input");

inputButton.addEventListener("click", addYourHobby);

function addYourHobby () {
    yourHobbies.push(inputTextField.value);
}

displayButton.addEventListener("click", printYourHobbies);

function printYourHobbies () {
    if (yourHobbies.length > 0) {
        for (let value of yourHobbies) {
            alert(`Your hobbies are ${value}`);
        }
    }
    else {
        alert("You do not have any hobbies!");
    }
}