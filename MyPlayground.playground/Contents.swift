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

//Lesson 3
/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit: Double = 500_000
let depositPeriod: Int = 5
let profit: Double = 1.15 // 15% interest rate per year

for _ in 1...depositPeriod{
    deposit *= profit
}
print("Amount of income after \(depositPeriod) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
    
    
/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
var arrayOfInt  = [Int]()
arrayOfInt = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let evenNumber =  arrayOfInt.filter {  $0 % 2 == 0 }
print("My even numbers are: \(evenNumber)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

var num = 0
var shuflesCount = 0
while(num != 5) {
    num = Int.random(in: 1...10)
    shuflesCount += 1
}
("Number 5 will be after \(shuflesCount) shuffles")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

let height = 10
let progressPerDay = 2
let progressPerNight = -1

var progress = 0
var daysSpent = 0

for _ in 1... {
    
    progress += progressPerDay
    daysSpent += 1
    
    if progress >= height {
        break
    }
    progress += progressPerNight
}
print ("Bug will spend \(daysSpent) days to reeach top of the post")



//Lesson 4
/*
Exercise 1
Declare myTeam as Girls or Boys.
Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
Print the output, for example:
Girls against Brooklyn Nets scored - 99:89
Girls against Brooklyn Nets scored - 109:99
Girls against Dallas Mavericks scored - 87:93
Girls against Dallas Mavericks scored - 104:97
Girls against Washington Wizards scored - 117:112
Girls against Washington Wizards scored - 107:122
*/

let myTeam: String = "Boys"
var resultsOfGames = [
    "Barcelona" : ["3-1", "4-1"],
    "Real Madrid" : ["2-1", "1-0"],
    "Chelsea" : ["5-1", "2-3"]
]
for (team, score) in resultsOfGames {
    for separateValue in 0..<score.count {
        print("\(myTeam) against \(team) scored - \(score[separateValue])")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 */
var cashInWallet = [5, 10, 20, 50, 100, 200, 500]
var total = 0

func calculateCashSum(cashInWallet: [Int]) -> Int{
    for cash in cashInWallet {
        total += cash
    }
    return total
}
print("Total cash in wallet: \(calculateCashSum(cashInWallet: cashInWallet))")


/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool{
    if number % 2 == 0 {
        return true
    }
    return false
}
print("is the number even: \(isEvenNumber(number: 4))")
print("is the number even: \(isEvenNumber(number: 3))")

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int]{
    var newArray: [Int] = []
    for arrayElement in from...to{
        newArray.append(arrayElement)
    }
    return newArray
}
var array = createArray(from: 1, to: 100)
print("Array: \(array)")

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
for number in array {
    if let numberToCheck = array.firstIndex(of: number) {
        if isEvenNumber(number: array[numberToCheck]){
            array.remove(at: numberToCheck)
        }
    }
}
print("The created array, even numbers remove: \(array)")

// Lesson 5

/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

class Orange {
    var color = ""
    var taste = ""
    var weight = ""
}
let someOrange = Orange()
someOrange.color = "Orange"
someOrange.taste = "Sweet"
someOrange.weight = "0.66"

print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")

/*
Exercise 2
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Figure {
    var height: Float
    var width: Float
    var radius: Float = 0
    var square: Float = 0
    var perimeter: Float = 0
    
    init(height:Float, width: Float){
        self.height = height
        self.width = width
    }
    func squareOfFigure() -> Float {
        return square
    }
    func perimeterOfFigure() -> Float {
        return perimeter
    }
}
class Rectangle: Figure{
    override func squareOfFigure() -> Float {
        return height * width
    }
    override func perimeterOfFigure() -> Float {
        return (height + width) * 2
    }
    func description() {
        print("Rectangle area is \(squareOfFigure()), and perimeter of figure is: \(perimeterOfFigure())")
    }
}
let myRectangle = Rectangle(height: 10, width: 10)
myRectangle.description()

// Lesson 6
/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

func calculateResult(firstNumber numberOne: Int ,andSecondNumber numberTwo: Int, withCalculationType calculationType:CalculationType) -> Int{
    var result = numberOne
    switch calculationType{
    case.addition: result += numberTwo
    case.substraction: result -= numberTwo
    case.multiplication: result *= numberTwo
    case.division:
        guard numberTwo > 0 else {
            print("Can't divide by zero")
            return result
        }
        
    }
    print("Result: \(calculationType.rawValue) of \(numberOne) and \(numberTwo) = \(result)")
    return result
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

let firstNumber = 5
let secondNumber = 0

calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .addition)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .substraction)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .multiplication)
calculateResult(firstNumber: firstNumber, andSecondNumber: secondNumber, withCalculationType: .division)


/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */

struct Car {
    var model: String?
    var year: Int?
    var color: String?
    
    func getSpecs(){
        print("Model: \(model ?? "Not Available"), Year: \(year ?? 0), Color: \(color ?? "Not available")")
    }
}
 let audiQ7 = Car(model: "Audi Q7", year: 2021, color: "White")
var audiTT = audiQ7
audiTT.model = "Audi TT"
audiQ7.getSpecs()
audiTT.getSpecs()








