//
//  ArithmeticOperation.swift
//  SwiftUIDemo
//
//  Created by Kongsun on 3/7/23.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String{
        switch self{
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
