import Foundation

// Constant and Variable
let tutorialTeam = 60
let editorialTeam = 17
let totalTeam = tutorialTeam + editorialTeam

// Explicit vs Inferred Typing
let tutorialTeamExplicit: Int = 60
let tutorialTeamInferred = 60

// Basic Types and Control Flow
// Floats and Doubles
let priceInferred = 19.99
let priceExplicit:Double = 19.99

// Bools
let onSaleInferred = true
let onSaleExplicit: Bool = false

// String
let nameInferred = "Kingsten Banh"
let nameExplicit: String = "Kingsten Banh"

// If statements and string interpolation
if onSaleInferred {
    println("\(nameInferred) on sale for \(priceInferred)!")
} else {
    println("\(nameInferred) at regular price: \(priceInferred)!")
}

// Classes and Methods
class TipCalculator {
    let total: Double!
    let taxPct: Double!
    let subtotal: Double!
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        // Arrays and For Loop
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        for possibleTip in possibleTipsInferred {
            println("\(possibleTip * 100)%: \(calcTipWithTipPct(possibleTip))")
        }
//        println("15%: \(calcTipWithTipPct(0.15))")
//        println("18%: \(calcTipWithTipPct(0.18))")
//        println("20%: \(calcTipWithTipPct(0.20))")
    }
    
    // Dictionaries
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.printPossibleTips()
tipCalc.returnPossibleTips()


// Unnamed Tuples
let tipAndTotalInferred = (4.00, 25.19)
let tipAndTotalExplicit: (Double, Double) = (4.00, 25.19)

tipAndTotalInferred.0
tipAndTotalInferred.1

let (theTipAmt, theTotal) = tipAndTotalInferred
theTipAmt
theTotal

// Named Tuples
let tipAndTotalNamedInferred = (tipAmt: 4.00, total: 25.19)
tipAndTotalNamedInferred.tipAmt
tipAndTotalNamedInferred.total

let tipAndTotalNamedExplicit: (tipAmt: Double, total: Double) = (4.00, 25.19)
tipAndTotalNamedExplicit.tipAmt
tipAndTotalNamedExplicit.total

// Returning Tuples
let total = 21.19
let taxPct = 0.06
let subtotal = total / (taxPct + 1)
func calcTipWithTipPct(tipPct: Double) -> (tipAmt: Double, total: Double) {
    let tipAmt = subtotal * tipPct
    let finalTotal = total + tipAmt
    return (tipAmt, finalTotal)
}
calcTipWithTipPct(0.20)


// A Full Prototype
class TipCalculatorModel {
    var total: Double
    var taxPct: Double
    var subTotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct: Double) -> (tipAmt: Double, total: Double) {
        let tipAmt = subTotal * tipPct
        let finalTotal = total + tipAmt
        return (tipAmt, finalTotal)
    }
    
    func returnPossibleTips() -> [Int: (tipAmt: Double, total: Double)] {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        
        var retval = Dictionary<Int, (tipAmt: Double, total: Double)>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}
var newTipCalculator = TipCalculatorModel(total: 100, taxPct: 0.083);
newTipCalculator.returnPossibleTips()


// Protocols
// A protocol is a list of methods that specify a "contact" or "interface". 
protocol Speaker {
    func Speak()
}

// This protocol declares a single method called Speak
// Any class that conforms to this protocol must implement this method. Try this by adding two classes that conform to your protocol
class Vicki: Speaker {
    func Speak() {
        println("Hello, I am Vicki!")
    }
}

class Ray: Speaker {
    func Speak() {
        println("Yo, I am Ray!")
    }
}

// To mark a class as conforming to a protocol, you must put a colon after the class name, and then list the protocol (after the name of the class it inherits from, if any). These classes do not inherit form any other class.
class Animal {
    
}
class Dog: Animal, Speaker {
    func Speak() {
        println("Woof!")
    }
}
// You can only inherit from 1 class in Swift, but you can conform to any number of protocols

// Optional Protocols
// You can mark methods in a protocol as being optional
@objc protocol Speaker2 {
    func Speak()
    optional func TellJoke()
}

class Vicki2: Speaker2 {
    func Speak() {
        println("Hello, I am Vicki!")
    }
    func TellJoke() {
        println("Q: What did Sushi A say to Sushi B?")
    }
}

class Ray2: Speaker2 {
    func Speak() {
        println("Yo, I am Ray!")
    }
    func TellJoke() {
        println("Q: What's the object-oriented way to become wealthy?")
    }
    func WriteTutorial() {
        println("I'm on it!")
    }
}

// Using Protocols
var speaker: Speaker2
speaker = Ray2()
speaker.Speak()
(speaker as Ray2).WriteTutorial()
speaker = Vicki2()
speaker.Speak()

speaker.TellJoke?()


// Delegates
// A delegate is simply a variable that conforms to a protocol, which a class typically uses to notify of events or perform various-sub-tasks. Think of it like a boss giving his minion status updates, or asking him/her to do something!
class DateSimulator {
    let a: Speaker2
    let b: Speaker2
    
    init(a: Speaker2, b: Speaker2) {
        self.a = a
        self.b = b
    }
    
    func simulate() {
        println("Off to dinner...")
        a.Speak()
        b.Speak()
        println("Walking back home...")
        a.TellJoke?()
        b.TellJoke?()
    }
}
let sim = DateSimulator(a: Vicki2(), b: Ray2())
sim.simulate()

protocol DateSimulatorDelegate {
    func dateSimulatorDidStart(sim: DateSimulator, a: Speaker, b: Speaker)
    func dateSimulatorDidEnd(sim: DateSimulator, a: Speaker, b: Speaker)
}

class LoggingDateSimulator: DateSimulatorDelegate {
    func dateSimulatorDidStart(sim: DateSimulator, a: Speaker, b: Speaker) {
        println("Date started!")
    }
    func dateSimulatorDidEnd(sim: DateSimulator, a: Speaker, b: Speaker) {
        println("Date ended!")
    }
}
var delegate: DateSimulatorDelegate?


// Table Views, Delegates, and Date Sources
import UIKit

class TestDataSource: NSObject, UITableViewDataSource {
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    var possibleTips = Dictionary<Int, (tipAmt: Double, total: Double)>()
    var sortedKeys: [Int] = []
    
    override init() {
        possibleTips = tipCalc.returnPossibleTips()
        sortedKeys = sorted(Array(possibleTips.keys))
        super.init()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedKeys.count
    }
}



