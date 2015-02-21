// Playground - noun: a place where people can play

import UIKit

/* SIMPLE VALUES */
// Use let to make a constant and var to make variable
var myVariable = 42
myVariable = 50
let myConstant = 42

// Implicit and explicit data type
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

// Convert a value to a different type
let label = "The width is "
let width = 94
let widdthLabel = label + String(width)

// Simplier way to include values in strings
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// Create arrays and dictionaries using brackets
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
]
occupations["Jayne"] = "Public Relations"

// Create empty array or dictionary, use the intializer syntax
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

// Create empty arrays as [] and empty dictionaries as [:]
shoppingList = []
occupations = [:]


