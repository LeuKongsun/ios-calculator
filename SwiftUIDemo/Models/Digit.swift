//
//  Digit.swift
//  SwiftUIDemo
//
//  Created by Kongsun on 3/7/23.
//

import Foundation

enum Digit : Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String{
        "\(rawValue)"
    }
}
