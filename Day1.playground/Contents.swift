import UIKit

var greeting = "Hello, playground"

var name = "Ted"
name = "Axel"
name = "Amos"

let character = "Daphne"
// character = "Scooby"

//print(character);

let actor = "Denzel Washington"

let filename = "paris.jpg"
let result = "You Win"

let quote = "Then he tapped a sing saying \"Believe\" and walked away"
//print(quote)

let movie = """
A day in
the life of an
Apple Engineer
"""
//print(movie)

//print(actor.count)
//print(actor.uppercased())
//print(movie.hasPrefix("A day"))
//print(filename.hasSuffix(".jpg"))


let score = 10
let big = 1000000
let otherbig = 1_000_000

// --> Transform INT / FLOAT / STRING
// Int()
// Double()
// String()
// \() -> String Interpolation (ANY --> STRING)


var gameOver = false
gameOver.toggle()
gameOver.toggle()
print("Game Over is", gameOver)

let message = "The quote of the day is \(quote)"
print(message)


// CREATE A PROGRAM THAT CONVERTS FROM CELSIUS TO FAHRENHEIT

let tempCelsius = 35.0

let tempFahrenheit = ((tempCelsius*9.0)/5.0) + 32.0
print("The temperature in Celsius is \(tempCelsius)C° and in Fahrenheit is \(tempFahrenheit)F°")
