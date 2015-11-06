// Making a grocery list! Yaaaaay!

// Psudeocode
// Make a function new_list that accepts a list name and makes a new list
// Make a function add_item that adds items to the list
// Make a function remove_item that removes items from the list
// Make a function update_quantity that updates the quantity of the list
// Make a function print_list that goes through the entire list and prints it in a specific format.



function new_list(name) {
	this.name = name;
}

function add_item(list, item, quantity) {
	if (item in list) {
		console.log("Item already exists.")
	}
	else {
		list[item] = quantity;
	}
}

function remove_item(list, item){
	delete list[item]
}

function update_quantity(list, item, quantity){
	if (item in list) {
		list[item] = quantity;
	}
	else {
		console.log("No item to update")
	}
}

function print_list(list) {
	console.log(list);
}

// Driver Code
// var list1 = new new_list("Grocery List");
// add_item(list1, "carrots", 1);
// add_item(list1, "carrots", 2);
// update_quantity(list1, "carrots", 17)
// update_quantity(list1, "ice cream", 100000)
// print_list(list1);

// Reflection
// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

// I solidified the concept of how to define obejcts outside of functions.

// What was the most difficult part of this challenge?

// The most difficult part was declaring a new object using a function. Everything else fell into place after that.

// Did an array or object make more sense to use and why?

// I used an object because I wanted the key:value pairs.


// Credit Card Verification!
// Psudeocode:
// 1. IF there are not 16 digits, raise error.
// 2. Break apart the digits
// 3. Double every other digit from index -2 to index 0
// 4. Break apart all doubled digits.
// 5. Sum all digits.
// 6. IF sum is multipl of 10, return true
// 7. ELSE return false.

function newcard (number){
	this.number = String(number);
	// if (String(number).length == 16) {
		// console.log("This has the correct number of digits");
	// }
	// else {
		// console.log("This is does not have the correct number of digits")
	// }

}

function isInt(value) {
  return !isNaN(value) && (function(x) { return (x | 0) === x; })(parseFloat(value))
}

function verify (card) {
	var split = card.number.split("");
	var even = [];
	var total = 0
	for (var position = 0; position < split.length; position++){
		if (position % 2 == 1) {
			even.push(split[position]*2);
			delete split[position];
		}
	}
	var even_split = String(even).split("");
	for (var position = 0; position < split.length; position++){
		if (isInt(split[position])) {
			total += parseInt(split[position]);
		}
	}
	for (var position = 0; position < even_split.length; position++){
		if (isInt(even_split[position])) {
			total += parseInt(even_split[position]);
		}
	}	
	if (total%10 == 0){
		console.log("This is a valid card number");
	}
	else {
		console.log("This is an invalid card number");
	}
}

// driver code
// var card1 = new newcard(1234567890123456);
// var correctcard = new newcard(5050505050505050)
// verify(card1);
// verify(correctcard);


// Reflection
// What concepts did you solidify in working on this challenge? 

// This solidified my understanding of accessing objects and how to manipulate objects in functions.

// What was the most difficult part of this challenge?

// The most difficult part was keeping track of all my variables and where they were going.

// Did you solve the problem in a new way this time?

// No, I solved it in the same way, using the same logic.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// My psudeocode was pretty much the same.