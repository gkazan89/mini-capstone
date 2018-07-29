/* global axios */

var guitarTemplate = document.querySelector("#guitar-card");
var guitarContainer = document.querySelector(".container");

axios.get("http://localhost:3000/api/guitars").then(function(response) {
  var guitars = response.data;
  guitars.forEach(function(guitar) {
    console.log(guitar);
    var guitarClone = guitarTemplate.content.cloneNode(true);
    guitarClone.querySelector(".card-title").innerText = guitar.name;
    guitarClone.querySelector(".card-text").innerText = guitar.description;
    guitarClone.querySelector("#price").innerText = guitar.price;
    guitarClone.querySelector(".card-img-top").src = guitar.images[0].url;
    console.log(guitar.images[0]);
    guitarContainer.appendChild(guitarClone);
  });
});
