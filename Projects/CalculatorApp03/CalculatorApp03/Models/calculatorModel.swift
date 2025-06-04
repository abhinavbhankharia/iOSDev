//
//  calculatorModel.swift
//  CalculatorApp03
//
//  Created by Abhinav Bhankharia on 04/06/25.
//

import Foundation
import SwiftUI

enum Keys: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "÷"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    var buttonColor:Color {
        switch self{
        case .add, .subtract, .multiply, .divide, .equal:
            return Color("vOperator")
        case .clear, .percent, .negative:
            return Color("hOperator")
        default:
            return Color("num")
        }
    }
}

enum Operation {
    case add, subtract, multiply, divide, none
}
