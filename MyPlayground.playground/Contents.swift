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
print ("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximetely \(daysPassed) days.")

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
var macBookCount = 9
var price = 1000

if macBookCount >= 10 {
    price -= 150
} else if macBookCount >= 5 {
    price -= 100
}
var totalSum = macBookCount * price
print ("New \(macBookCount) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) EUR")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge = "32a"
if Int(userInputAge) != nil {
    print("Good to go")
} else {
    print ("Can't convert this string to integer.")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let calendar = Calendar.current
let components = DateComponents(calendar: .current, timeZone: .current, year: 1996, month: 03, day:28)
let birth = calendar.date(from:components)
let today = Date()

func calcFromBirth(startDate: Date, endDate: Date, check: String) -> Int {
    let calendar = Calendar.current
    switch check {
    case "day":
        let components = calendar.dateComponents([.day], from: startDate, to: endDate)
        return components.day!
    case "year":
        let components = calendar.dateComponents([.year], from: startDate, to: endDate)
        return components.year!
    case "month":
        let components = calendar.dateComponents([.month], from: startDate, to: endDate)
        return components.month!
    default:
        print("wrong check keyword")
        return 0
    }
}

let totalYearsFromBirth = calcFromBirth(startDate: birth!, endDate: today, check: "year")
let totalMonthsFromBirth = calcFromBirth(startDate: birth!, endDate: today, check: "month")
let totalDaysFromBirth = calcFromBirth(startDate: birth!, endDate: today, check: "day")

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let monthOfBirth = components.month!

switch monthOfBirth {
case 1...3:
    print("I was born in the first quarter")
case 4...6:
    print("I was born in the second quarter")
case 7...9:
    print("I was born in the third quarter")
case 9...12:
    print("I was born in the fourth quarter")
default:
break


}
