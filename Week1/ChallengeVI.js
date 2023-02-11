/*
    Created by: Evgeny Todorov
    Last upated: 02/11/23
    Description: Javascript array/list, function to add items to it, function to display items, and a display button event listener.
*/

let yourHobbies = [];
let button = document.querySelector("#hobbies-display");

function addYourHobby (hobby) {
    yourHobbies.push(hobby);
}

button.addEventListener("click", printYourHobbies);

function printYourHobbies () {
    if (yourHobbies.length > 0) {
        for (let value of yourHobbies) {
            alert(`Your hobbies are ${yourHobbies[value]}`);
        }
    }
    else {
        alert("You do not have any hobbies!");
    }
}