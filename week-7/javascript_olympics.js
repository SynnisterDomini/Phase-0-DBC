// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
var athlete1 = {
  name: "Bob",
  event: "Running"
}

var athlete2 = {
  name: "Susan",
  event: "Scavenger Hunt"
}

function win(athlete) {
  athlete.win = athlete.name + " has won the " + athlete.event;
}

// Jumble your words

function reverse(string) {
  return(string.split("").reverse().join(""));
}

// 2,4,6,8
function even_only(array) {
  var even_array = []
  for (var position = 0; position < array.length; position++)
    if (array[position] % 2 == 0)
      even_array.push(array[position]);
      console.log(even_array)
}

// "We built this city"


function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}



var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection