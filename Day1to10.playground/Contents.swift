import UIKit

/*
 
========= DAY 01 =========
 
 */

// -- CREATE VARIABLES AND CONSTANTS --

// var = mutable
var variable1 = "I'm mutable"
variable1 = "I've changed"

// let = non-mutable
let variable2 = "I'm not mutable"

let sameNum1 = 1000000
let sameNum2 = 1_000000
let sameNum3 = 1_000_000

let decimalNum1 = 1.0
let decimalNum2 = 3.1416

/* -- SOME STRING METHODS --
.count -> counts the characters in the string, including spaces
.uppercased() -> returns the string uppercased
.hasPrefix([str]) -> checks if string starts with [str]
.hasSuffic([str]) -> checks if string ends with [str]
 
 -- SOME NUMBER METHODS --
 .isMultipleOf(of: #)
 
 -- SOME CONVERSION METHODS --
 
 - Int()
 - Double()
 - String()
 - "\()" -> String Interoplation
*/

/*
 
========= DAY 02 =========
 
 */

// -- BOOLEANS --

let trueStatus = true
let falseStatus = false

/* -- SOME BOOLEAN METHODS --
 
.toggle() -> Flips the boolean value
*/

// -- Checkpoint 1 - CELSIUS TO FAHRENHEIT

let celsius = 32.0

let fahrenheit =  ((celsius * 9.0) / 5.0) + 32.0
print("Celsius is \(celsius) C° and in Fahrenheit is \(fahrenheit) F°")


/*
 
========= DAY 03 =========
 
 */

// -- COMPLEX DATA TYPES --

// ARRAYS

let myArrayStr = ["Hello","World"]
let myArrayNum = [10, 11, 12]

/* --SOME ARRAY METHODS --
 
 .append([element]) -> appends the element at the end of the arr
 .count -> counts the elements in the array
 .remove(at: #) -> removes the element at index #
 .removeAll() -> removes all the elements of the array
 .contains([element]) -> returns a bool if value is found in the array
 .sorted() -> sorts the array
 .reversed() -> reverse the array elements
 
 */

// DICTIONARIES --> [key: value]

let myDictionary1 = [
    "name": "Taylor",
    "job": "Singer",
    "location": "Nashville"
    ]

/* -- SOME DICT METHODS --
 
 default: -> if no value, we can declare a default to avoid errors
    ex: print(myDictionary1["name", default: "No Name"]
 
 */

// SETS --> No repeated values

let people = Set([1,2,3,4,5,6])

/* --SOME SET METHODS --
 
 .insert([elem]) -> inserts an element in the set
 .contains([elem]) -> checks if the element exists in the set
 .count -> raturns the number of elements in the array
 .sorted() -> returns a sorted arr of the set's items
 
 */

// ENUMS

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.friday
day = .wednesday

/*
 
========= DAY 04 =========
 
 */

// TYPE ANNOTATIONS - EXPLICIT ABOUT DATA TYPES WE WANT...
/*
 : INT
 : DOUBLE
 : BOOL
 : STRING
 : [STRING] / [STRING: STRING]
 : SET<STRING>
 
 */

enum UIStyle {
    case light, dark, system
}
var style: UIStyle
style = .dark

// -- Checkpoint 2 - Create an array of strings, then write some code
// that prints the number of items in the array and also the number of unique
// items in the array

let arrayCheck2 = ["Hola", "Soy", "German", "Hola", "Yo", "Soy", "Fernanfloo"]
print(arrayCheck2.count)
print(Set(arrayCheck2).count)

/*
 
========= DAY 05 =========
 
 */

// -- CONDITIONS --

let score = 85
if score > 80 {
    print("Great Job")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}
else{
    print("It's \(friendName) vs \(ourName)")
}

// -- MULTIPLE CONDITIONS -- &&, !, ||

// -- SWITCH CASING --

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast: Weather
forecast = .snow

switch forecast{
case .sun:
    print("Sunny")
case .rain:
    print("Rainy")
case .wind:
    print("Windy")
case .snow:
    print("Snowy")
case .unknown:
    print("We don't know")
default:
    print("We also don't know")
}

// Fallthrough if we need auto-decreasing switching cases

// -- TERNARY CONDITIONAL --


let age = 18
print(age >= 18 ? "Yes" : "No")

let names = ["Daisy", "Peach", "Rosalina"]
print(names.isEmpty ? "No names" : "\(names.count) characters")


enum Theme {
    case light, dark
}

let theme: Theme
theme = .dark

let background = theme == .dark ? "black" : "white"


/*
 
========= DAY 06 =========
 
 */

// -- FOR LOOPS --

let platforms = ["iOS", "macOS", "tvOS", "watchOS", "visionOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12{
    print("5 x \(i) is \(5*i)")
}

for i in 1...12{
    print("The \(i) table: ")
    for j in 1...12{
        print("\(j) x \(i) is \(i*j)")
    }
    print()
}


var lyric = "Haters gonna"

// underscore when we dont use variable
// ..< up to but not doing 6
for _ in 1..<6{
    lyric += " hate"
}

print(lyric)


// -- WHILE LOOPS --

var countdown = 5

while countdown > 0{
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20{
    roll = Int.random(in: 1...20)
    print("Rolled \(roll)")
}


// -- BREAK AND CONTINUE --

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for file in filenames{
    if file.hasSuffix(".jpg") == false{
        continue
    }
    print("Picture: \(file)")
}


// Checkpoint 3

for i in 1...100{
    if (i.isMultiple(of: 3)) && (i.isMultiple(of: 5)){
        print("FizzBuzz")
    }
    else if (i.isMultiple(of: 3)){
        print("Fizz")
    }
    else if (i.isMultiple(of: 5)){
        print("Buzz")
    }
    else{
        print(i)
    }
}



/*
 
========= DAY 07 =========
 
 */

// -- FUNCTIONS PT1--

func showWelcome(){
    print("Welcome to my app")
    print("By default This person prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

func printTimesTables(number: Int){
    for i in 1...12{
        print("\(i) x \(number) is \(number*i)")
    }
}

printTimesTables(number: 5)

func printTimesTablesTwo(number: Int, end: Int){
    for i in 1...end{
        print("\(i) x \(number) is \(number*i)")
    }
}

printTimesTablesTwo(number: 5, end: 10)


// -- RETURN STATEMENT --

func rollDice() -> Int{
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func sameStr(word1: String, word2: String) -> Bool{
    return word1.sorted() == word2.sorted()
}

sameStr(word1: "abc", word2: "cba")

func pythagoras(a: Double, b: Double) -> Double{
    return(sqrt(a*a + b*b))
}

let c = pythagoras(a: 3, b: 4)
print(c)


// -- RETURN MULTIPLE VALUES --

func getUser() -> (firstName: String, lastName: String){
    //return (firstName: "Dua", lastName: "Lipa")
    return("Dua", "Lipa")
}

func getUserTwo() -> (String, String){
    return("Max", "Frost")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

let user2 = getUserTwo()
print("Name: \(user2.0) \(user2.1)")

let (uno, dos) = getUser()
print("Name (again): \(uno) \(dos)")

let (tres, _) = getUserTwo()
print("Name (again): \(tres)")


// -- LABEL CUSTOMIZATION --

//func isUppercased(string: String) -> Bool {
//    return string == string.uppercased()
//}
//
//let string = "HELLO, WORLD"
//let resultTwo = isUppercased(string: string)
//print(resultTwo)

// When we don't want to show the label, use _
func isUppercased(_ string: String)-> Bool {
    return string == string.uppercased()
}

let string = "HELLO, WORLD"
let resultTwo = isUppercased(string)
print(resultTwo)


// Sometimes _ is not enough, so for custom labels we use [custom label] [insidelabel]
//func shock(for number: Int){
//    for i in 1...number{
//        print("There may be a shock coming in lap \(i)...")
//    }
//}

//shock(for: 3)

/*
 
========= DAY 08 =========
 
 */

// -- FUNCTIONS PT 2 --

// DEFAULT VALUES

// No default values
/*
func shock(for number: Int){
    for i in 1...number{
        print("There may be a shock coming in lap \(i)...")
    }
}
 */

// With Default values
func nyanCat(for number: Int = 10){
    print("Nyan cat says: ", terminator: "")
    for _ in 1...number{
        print("Nyan ", terminator: "")
    }
}

nyanCat(for: 3)

// ERROR HANDLING

enum PasswordError: Error{
    case obvious, short, strong
}

func checkPassword(_ password: String) throws -> String{
    if password.count < 5{
        throw PasswordError.short
    }
    if password == "12345"{
        throw PasswordError.obvious
    }
    
}



/*
 
========= DAY 09 =========
 
 */



/*
 
========= DAY 10 =========
 
 */
