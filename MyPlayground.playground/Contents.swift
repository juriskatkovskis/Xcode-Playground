import UIKit
import Darwin

/*  Lesson 1
 Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/
var greetings = "Hello playground"

let firsString = " I'm learning "
let secondString = " swift "
print(firsString+secondString)

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge: Int = 26

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears = (myAge + 10)
print (myAgeInTenYears)

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear: Double = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed: Float = (Float (myAgeInTenYears) * Float(daysInYear))
print(daysPassed)
 
/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
print ("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximetely \(Float(myAge)*Float(daysInYear)) days.")

// Lesson 2
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */
var numberOneFloat: Float = 3.14
var numberTwoFloat: Float = 42.0
var numberThreeDouble: Double = Double(numberOneFloat) + Double(numberTwoFloat)
print(numberThreeDouble)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".


*/

var numberOne = 10
var numberTwo = 2
let divide = numberOne / numberTwo
let remainder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(divide), the remainder is \(remainder) ")

/*
Ex3:
You need to buy several new MacBook Pro, each cost 1000 EUR.
If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
*/
/*
var macBookCount = 2
var price = 1000 * macBookCount
var totalSum = 
if macBookCount  < 5 {
    print ("Each MacBook cost 1000 EUR")
}else if macBookCount >= 5 && macBookCount < 10{
    print ("Each MacBook cost 900 EUR")
}else if macBookCount >= 10{
    print ("Each MacBook cost 850 EUR")
}
print ("New \(macBookCount) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) EUR")

