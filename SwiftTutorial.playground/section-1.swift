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










