// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Each player takes turns picking cards. Pairs are discarded. Don't end up with the joker.
// Overall mission: discard your hand.
// Goals: have a hand size 0
// Characters: player1, player2
// Objects: player1's hand, player2's hand
// Functions: new game, play.

// Pseudocode
// Give both players 13 cards.
// Randomly choose who goes first.
// Second player recieves the joker.
// First player chooses a card and discards any pairs the player may have.
// Second player then does the same.
// Repeat until someone has no cards in hand.

// Initial Code
// var player1 = {
// 	hand: [],
// 	turn_player: false
// }
// var player2 = {
// 	hand: [],
// 	turn_player: false
// }
// var game_active = false

// function shuffle(array) {
//   var currentIndex = array.length, temporaryValue, randomIndex ;

//   // While there remain elements to shuffle...
//   while (0 !== currentIndex) {

//     // Pick a remaining element...
//     randomIndex = Math.floor(Math.random() * currentIndex);
//     currentIndex -= 1;

//     // And swap it with the current element.
//     temporaryValue = array[currentIndex];
//     array[currentIndex] = array[randomIndex];
//     array[randomIndex] = temporaryValue;
//   }

//   return array;
// }

// function newgame(){
// 	player1.hand = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"];
// 	player2.hand = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"];
// 	game_active = true
// 	var randomnum = Math.random();
// 	if (randomnum > 0.5){
// 		player1.hand.push("Joker")
// 		player2.turn_player = true
// 		console.log("Player 2 is going first.");
// 	}
// 	else {
// 		player2.hand.push("Joker")
// 		player1.turn_player = true
// 		console.log("Player 1 is going first.");
// 	}
// }



// function play(){
// 	var selection = 0
// 	var drawncard = ""
// 	if (player1.turn_player == true) {
// 		selection = Math.floor(Math.random()*player2.hand.length);
// 		drawncard = player2.hand[selection];
// 		player1.hand.push(player2.hand[selection]);
// 		player2.hand.splice(selection, 1);
// 		if (drawncard == "Joker"){
// 			console.log("Player 1 has drawn the Joker!");
// 		}
// 		else {
// 			player1.hand.pop()
// 			var index = player1.hand.indexOf(drawncard)
// 			player1.hand.splice(index, 1);
// 			console.log("Player 1 drew a " + String(drawncard) + " and discarded it!")
// 		}
// 		if (player1.hand.length == 0) {
// 			console.log("Player 1 has no cards in hand! They win!")
// 			game_active = false
// 		}
// 		else {
// 			player1.turn_player = false;
// 			player2.turn_player = true;
// 			play()
// 		}
// 	}

// 	else if (player2.turn_player == true) {
// 		selection = Math.floor(Math.random()*player1.hand.length);
// 		drawncard = player1.hand[selection];
// 		player2.hand.push(player1.hand[selection]);
// 		player1.hand.splice(selection, 1);
// 		if (drawncard == "Joker"){
// 			console.log("Player 2 has drawn the Joker!");
// 		}
// 		else {
// 			player2.hand.pop()
// 			var index = player2.hand.indexOf(drawncard)
// 			player2.hand.splice(index, 1);
// 			console.log("Player 2 drew a " + String(drawncard) + " and discarded it!")
// 		}
// 		if (player2.hand.length == 0) {
// 			console.log("Player 2 has no cards in hand! They win!")
// 			game_active = false
// 		}
// 		else {
// 			player2.turn_player = false;
// 			player1.turn_player = true;
// 			play()
// 		}
// 	}
// 	else if (game_active == false) {
// 		console.log("No game currently active.");
// 	}
// 	else {
// 		console.log("I'm confused.")
// 	}

// }








// Refactored Code

var player1 = {
	hand: [],
	turn_player: false
}
var player2 = {
	hand: [],
	turn_player: false
}
var game_active = false

function shuffle(array) {
  var currentIndex = array.length, temporaryValue, randomIndex ;
  while (0 !== currentIndex) {
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}

function newgame(){
	player1.hand = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"];
	player2.hand = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"];
	game_active = true
	var randomnum = Math.random();
	if (randomnum > 0.5){
		player1.hand.push("Joker")
		player2.turn_player = true
		console.log("Player 2 is going first.");
	}
	else {
		player2.hand.push("Joker")
		player1.turn_player = true
		console.log("Player 1 is going first.");
	}
}



function play(){
	var selection = 0
	var drawncard = ""
	if (player1.turn_player == true) {
		selection = Math.floor(Math.random()*player2.hand.length);
		drawncard = player2.hand[selection];
		player1.hand.push(player2.hand[selection]);
		player2.hand.splice(selection, 1);
		if (drawncard == "Joker"){
			console.log("Player 1 has drawn the Joker!");
		}
		else {
			player1.hand.pop()
			var index = player1.hand.indexOf(drawncard)
			player1.hand.splice(index, 1);
			console.log("Player 1 drew a " + String(drawncard) + " and discarded the pair!")
		}
		if (player1.hand.length == 0) {
			console.log("Player 1 has no cards in hand! They win!")
			game_active = false
		}
		else {
			player1.turn_player = false;
			player2.turn_player = true;
			play()
		}
	}

	else if (player2.turn_player == true) {
		selection = Math.floor(Math.random()*player1.hand.length);
		drawncard = player1.hand[selection];
		player2.hand.push(player1.hand[selection]);
		player1.hand.splice(selection, 1);
		if (drawncard == "Joker"){
			console.log("Player 2 has drawn the Joker!");
		}
		else {
			player2.hand.pop()
			var index = player2.hand.indexOf(drawncard)
			player2.hand.splice(index, 1);
			console.log("Player 2 drew a " + String(drawncard) + " and discarded the pair!")
		}
		if (player2.hand.length == 0) {
			console.log("Player 2 has no cards in hand! They win!")
			game_active = false
		}
		else {
			player2.turn_player = false;
			player1.turn_player = true;
			play()
		}
	}
	else if (game_active == false) {
		console.log("No game currently active.");
	}
	else {
		console.log("I'm confused.")
	}

}

// Driver Code
// newgame()
// play()


// Reflection
//
//What was the most difficult part of this challenge?

// The most difficult part of this challenge was coming up with a game that fit the limits of my programming knowledge.

// What did you learn about creating objects and functions that interact with one another?

// They're easier to work with when you define global variables that both objects access.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I learned about indexOf, Math.floor, and Math.random. 

// How can you access and manipulate properties of objects?

// It's easier if you work backwards. Start with the name of the property that you want to manipulate, then add the object behind it.