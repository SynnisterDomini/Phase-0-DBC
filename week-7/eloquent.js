// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Values, Types and Operators
// Two similarities between JavaScript and Ruby syntax is that they both have certain symbols that mean the same thing.
// For example, \n still stands for a new line and parentheses are still used to determine mathematical order.
// Two differences are that JavaScript uses null instead of nil, and can casually convert bits of data that don't interact.
// For example: inputting "5" + 1 will give you 6.

// Program Structure
// Write your own variable and do something to it.

var name = "Isaac Lee"
name = "Not Isaac Lee"


prompt("What's your favorite food?", "insert food here")
console.log("That is my favorite, too!")

var x = 0
while (x <= 100) {
	x+=1
	if (x % 3 == 0 && x % 5 != 0)
		console.log("Fizz");
	else if (x % 5 == 0 && x % 3 != 0)
		console.log("Buzz");
	else if (x % 3 == 0 && x % 5 == 0)
		console.log("FizzBuzz");
	else
		console.log(x);
}

// What is an expression?
// An expression is a piece of code that compares one item to another.

// What is the purpose of semicolons in JavaScript? Are they always required?
// Semicolons basically end certain pieces of code. They're not always required, but they're heavily recommended.

// What causes a variable to return undefined?
// All variables that have no definition (empty variables) will return undefined.

// Write your own variable and do something to it in the eloquent.js file.
// Already did.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// console.log returns the requested item to the console. It's similar to Ruby's print method.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// See above.

// Describe while and for loops
// While and for loops repeat themselves as long as they are true, and move on to the next line of code.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// Both Ruby and JavaScript have different syntax, but they have some differences. Ruby tends to have more centralized methods
// while JavaScript seems a bit more basic. Common methods in ruby such as .each or other enumerables are not included in the JavaScript Package.

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// completed FizzBuzz above.


// Functions

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.