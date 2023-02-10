/*
    Created by: Evgeny Todorov
    Last upated: 02/09/23
    Description: Javascript array/list and function to add items to it.
*/

let yourHobbies = [];

function addYourHobby (hobby) {
    yourHobbies.push(hobby);
}

function printYourHobbies () {
    if (yourHobbies.length > 0) {
        for (let value of yourHobbies) {
            alert("Your hobbies are ", yourHobbies[value]);
        }
    }
    else {
        alert("You do not have any hobbies!");
    }
}