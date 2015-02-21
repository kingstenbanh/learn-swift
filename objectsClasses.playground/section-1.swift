import Darwin

// Use class followed by the class's name to create a class
// A property declaration in a class is written the same way
// as a constant or variable declaration, except that it is in
// the context of a class. Likewise, method and function declarations
// are written the same way
class Shape {
    var numberOfSides = 0
    let color = "red"
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func defaultColor(color: String) -> String {
        return "The default color of the shape is \(color)."
    }
}


// Create an instance of a class by putting parentheses after the class name.
// Use dot syntax to access the properties and methods of the instance
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
var shapeColor = shape.defaultColor("blue")


// This version of the Shape class is missing something important: an initalizer
// to set up the class when an instance is created. Use init to create one
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


// Subclasses include their superclass name after their class name,
// separated by a colon. There is no requirement for classes to subclass
// any standard root class, so you can include or omit a superclass as needed
// Methods on a subclass that override the superclass's implementation are marked
// with override--overriding a method by accident, without override, is detected by
// the complier as an error. The complier also detects methods with override that
// don't actually override any method in the superclass
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 0
    }
    
    func area() -> Double {
        return radius * radius * M_PI
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius of \(radius)"
    }
    
}
let circle = Circle(radius: 5.5, name: "my test circle")
circle.area()
circle.simpleDescription()


// In addition to simple properties that are stored, properties can
// have a getter and setter
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 9.9
triangle.sideLength


// If you don't need to compute the property but still need to provide code 
// that is run before and after setting a new value, use willSet and didSet
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
triangleAndSquare.triangle.sideLength


// Methods on classes have one important difference from functions. Parameter 
// names in functions are used only within the function, but parameters names
// in methods are also used when you call the method (expect for the first parameter)
class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)


// When working with optional values, you can write ? before operations like 
// methods, properties, and subscripting. If the value before the ? is nil, 
// everything after the ? is ignored and the value of the whole expression is nil.
// Otherwise, the optional value is unwrapped, and everything after the ? acts on
// the unwrapped value. In both cases, the value of the whole expression is 
// an optional value
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength















