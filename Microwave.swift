import Foundation;

/**
 * My program calculates how much energy is in an object.
 *
 * @author  Kent Gatera
 * @version 1.0
 * @since   2024-Feb-27
 */

// Defining the error cases.
enum errorCases: Error {
      case invalidNumeral
}

func Microwave()throws -> Double {
    // Input prompt.
    print("How many?: ", terminator: "")
    if let userInput = readLine(), let amountNumber = Double(userInput) {
        if amountNumber > 0 && amountNumber <= 3 {
            // If successful, print the number
            return amountNumber
            }
    }
    // Raises "errorCases.invalidNumerals"
    throw errorCases.invalidNumeral
}


do {
    let subTime : Double = 1, soupTime : Double = 1.75, pizzaTime : Double = 0.75
    print("What dish are you warming?: ", terminator: "")

    let foodChoice = readLine()?.lowercased()
    var heatingTime : Int
    let amountAsDouble = try Microwave()
    switch foodChoice {
        case "soup":
            let heatingTime = soupTime * (1.0 + 0.5 * (amountAsDouble - 1.0))
            // Printing the result
            print("The food will take \(heatingTime) minutes.")
        case "pizza":
            let heatingTime = pizzaTime * (1.0 + 0.5 * (amountAsDouble - 1.0))
            // Printing the result
            print("The food will take \(heatingTime) minutes.")
        case "sub":
            let heatingTime = subTime * (1.0 + 0.5 * (amountAsDouble - 1.0))
            // Printing the result
            print("The food will take \(heatingTime) minutes.")
        default:
            print("Invalid food choice.\n")
    }

} catch {
      // Instructions for catch case.
    print("Please enter a valid integer amount 1-3.\n")
}
