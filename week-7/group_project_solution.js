/* JavaScript Telephone Challenge
My role in the group is person 1: Test to User Stories

As a user I want to be able to calculate the sum by going through a list of numbers and adding all the numbers in it as its own function called sum.

As a user I want to be able to calculate the mean by going through a list of numbers, adding all the numbers and dividing by the total amount of numbers, as its function called mean.

As a user I want to be able to calculate the median by going through a list of numbers and finding the middle number of that list, as its own function called median.




*/




function sum(array){
	var total = 0;
	for (var position = 0; position < array.length; position++)
		total += array[position];
		return total
}

function mean(array){
	return (sum(array)/array.length);
}

function sortNumber(a,b) {
	return a - b;
}

function median(array){
	var new_array = array.sort(sortNumber);
		if (new_array.length%2 == 1) 
			return new_array[(new_array.length/2)-0.5];
		else
			return (new_array[new_array.length/2] + new_array[(new_array.length/2) - 1])/2;
}

var a = [1,15,8,19,2,11,100,]
// console.log(sum(a))
// console.log(mean(a))
// console.log(a.sort(sortNumber))
// console.log(median(a))
