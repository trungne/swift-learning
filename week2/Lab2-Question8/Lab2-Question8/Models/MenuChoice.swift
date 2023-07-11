//
//  MenuChoice.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 12/07/2023.
//

import Foundation

enum MenuChoice: Int, CaseIterable {
    case PLAY = 1
    case ANALYZE = 2
    
    static var allCasesInStringArray: [String] {
        return MenuChoice.allCases.map { item in String(item.rawValue) }
    }
    
    static var allCasesInString: String {
        return MenuChoice.allCasesInStringArray.joined(separator: ", ")
    }
}
