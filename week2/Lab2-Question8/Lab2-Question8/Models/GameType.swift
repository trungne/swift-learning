//
//  GameType.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 12/07/2023.
//


import Foundation

enum GameType: Int, CaseIterable {
    case LOTTERY_649 = 1
    case VIETLOT = 2
    
    static var allCasesInStringArray: [String] {
        return MenuChoice.allCases.map { item in String(item.rawValue) }
    }
    
    static var allCasesInString: String {
        return MenuChoice.allCasesInStringArray.joined(separator: ", ")
    }
}
