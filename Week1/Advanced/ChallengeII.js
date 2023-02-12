/*
    Created by: Evgeny Todorov
    Last upated: 02/11/23
    Description: Asynchronous function to connect with PokeAPI, fetch data, and await and display it.
*/

let button = document.querySelector("#clickedButton");

button.addEventListener("click", connectPokeAPI);

async function connectPokeAPI() {
    const request = new Request('https:pokeapi.co/api/v2/pokemon');
    const response = await fetch(request);
    if (!response.ok) {
        throw new Error(response);
    }
    else {
        let data = await response.text();
        alert(data);
    }
}