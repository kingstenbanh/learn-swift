// if and switch to make conditionals
// use for-in, for, while, and do-while to make loops
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore

// A question mark (?) after the type of a value to mark
// the value as optional
var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John AppleSeed"
optionalName = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else if optionalName == nil {
    greeting = "Hello, friend"
}

// Switches support any kind of data and a wide variety of 
// comparison operations, they aren't limited to integers
// and tests for equality
let vegetable = "red pepper"
switch vegetable {
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
    case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x)?"
    default:
        let vegetableComment = "Everything tastes good in soup."
}

// Dictionaries are an unordered collection, so their keys and values are
// iterated over in an arbitrary order
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kinds, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            
        }
    }
}
largest

// Use while to repeat a block of code until a condition changes.
// The condition of a loop can be at the end instead, ensuring that
// the loop is run at least once
var n = 2
while n < 100 {
    n *= 2
}
n

var m = 2
do {
    m *= 2
} while m < 100
m

// You cna keep an index in a loop-either by using ..< to make a range
// of indexes or by writing an explicit initialization, condition, and 
// increment. These two loops do the same thing
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
secondForLoop














