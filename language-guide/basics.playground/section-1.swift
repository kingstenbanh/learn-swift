// Constants and Variables
// Declare constants with the let keyword
let maximumNumberOfLoginAttempts = 10

// Declare variables with teh var keyword
var currentLoginAttempt = 0

// You can declare multiple constants or multiple variables on a single line, separated by commas:
var x = 0.0, y = 0.0, z = 0.0


// Type Annotations
// You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store. 
// Write a type annotation by placing a colon after the constant or variable name, followed by a space, followed by the name of the type to use
var welcomeMessage: String
welcomeMessage = "Hello"

// Decalre multiple related variables of the same type on a single line
var red, green, blue: Double


// Naming Constants and Variables
// Constant and variable names can contain almost any character, including Unicode characters
let ​π​ = 3.14159
//let 你好​ = ​;"你好世界"
//let 🐶🐮​ = ​;"dogcow”

// Values can be changed in variables
var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour!"
// friendlyWelcome is now "Bonjour!"

// Values can't be changed in constant
let languageName = "Swift"
//languageName = "Swift++"
// this is a compile-time error - languageName cannot be changed


// Printing Constants and Variables
println(friendlyWelcome)
println("this is a string")
println("The current value of friendlyWelcome is \(friendlyWelcome)")


// Comments
// this is a comment
/* this is also a comment, 
but written over multiple lines */


// Semicolons
// Swift does not require you to write a semicolon (;) after each statement in your code, although you can do so if you wish.


// Integers
// Integers are whole numbers with no fractional component. Integers are either signed (positive, zero, or negative) or unsigned (positive or zero).

// Integer Bounds
// You can access the minimum and maximum values of each integer type with its min and max properties:
let minValue = UInt8.min
let maxValue = UInt8.max

// Int
// Unless you need to work with a specific size of integer, always use Int for integer values in your code.

// UInt
// Unsigned integer type, which has the same size as the current platform's native word size

// Floating-Point Numbers
// Floating-point numbers are numbers with a fractional component, such as 3.14159

// Type Safety and Type Interface
// Type safe encourages you to be clear about the types of values your code can work with. Swift uses type inference to work out the appropriate type. 

// Numeric Literals
// Integer literals 
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

// All of these floating-point literals have a decimal value of 12.1875
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// Numeric literals can contain extra formatting to make them easier to read.
// Both integers and floats can be padded with extra zeroes and can contain underscores to help with readability. 
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


// Numeric Type Conversion
// Use the Int type for all general-purpose integer constants and variables in your code, even if they are known to be non-negative. Using the default integer type in everyday situations means that integer constants and variables are immediately interoperable in your code and will match the inferred type for integer literal values


// Type Aliases
// Type aliases define an alternative name for an existing type. You define type aliases with the typealias keyword
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min


// Booleans
// Boolean values are referred to as logical, because they can only ever be true or false. Swift provides two Boolean constant values, true and false
let orangesAreOrange = true
let turnipsAreDelicious = false

// Boolean values are particularly useful when you work with conditional statements such as the if statement:
if turnipsAreDelicious {
    println("Mmm, tasty turnips!")
} else {
    println("Eww, turnips are horrible")
}

// Swift's type safety prevents non-Boolean values from being substituted for Bool. The following example reports a compile-time error:
let i = 1
if i == 1 {
    println("This is an error")
}


// Tuples
// Tuples group multiple values into a single compound value. The values within a tuple can be of any type and do not have to be of the same type as each other.
let http404Error = (404, "Not Found")
// It can be described as "a tuple of type (Int, String)"

// You can decompose a tuple's contents into separate constants or variables, which you then acess as usual
let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("The status message is \(statusMessage)")


// If you only need some of the tuple's values, ignore parts of the tuple with an underscore (_) when you decompose the tuple
let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")

// Alternatively, access the individual element values in a tuple using index numbers starting at zero
println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

// You can name the individual element in a tuple when the tuple is defined
let http200Status = (statusCode: 200, description: "OK")

// If you name the elements in a tuple, you can use the element names to access the values of those elements
println("The status code is \(http200Status.statusCode)")
println("The status message is \(http200Status.description)")


// Options
// You use optionals in situations where a value may be absent.
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()


// nil
// You set an optional variable to a valueless state by assigning it the special value nil
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

// If an optional has a value, it is considered to be "not equal to" nil:
if convertedNumber != nil {
    println("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
    println("convertedNumber has an integer value of \(convertedNumber!).")
}


// Optional Binding
if let actualNumber = possibleNumber.toInt() {
    println("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    println("\'\(possibleNumber)\' could not be converted to an integer")
}


// Debugging with Assertions
// An assertion is a runtime check that a logical condition definitely evaluates to true. Literally put, an assertion "asserts" that a condition is true. If the condition is true, code execution continues; else code execution ends.
let age = 3
assert(age >= 0, "A person's age cannot be less than zero")


























