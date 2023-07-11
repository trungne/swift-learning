//
//  utils.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation


func getRandomLuckyNumbers(length: Int, min: Int = MIN_LUCKY_NUMBER, max: Int = MAX_LUCKY_NUMBER) -> [Int] {
    var numbers: [Int] = []
    
    for _ in 0..<length {
        let randomLuckyNumber = Int.random(in: min...max)
        numbers.append(randomLuckyNumber)
    }
    
    return numbers
}

func getMatches(choices: [Int], luckyNumbers: [Int]) -> Int {
    var matches = 0
    for choice in choices {
        if let _ = luckyNumbers.first(where: {$0 == choice}) {
            matches += 1
        }
    }
    
    return matches
}

func getPrizeInDollars(matches: Int, matchPrizeMap: Dictionary<Int, Int>) -> Int {
    guard let prize = matchPrizeMap[matches] else {
        return 0
    }
    
    return prize
}



func formatCurrency(from: Int) -> String {
    let formater = NumberFormatter()
    formater.groupingSeparator = ","
    formater.numberStyle = .decimal
    return formater.string(from: from as NSNumber) ?? ""
}

func formatNumber(from: Int) -> String {
    let formater = NumberFormatter()
    formater.groupingSeparator = ","
    formater.numberStyle = .decimal
    return formater.string(from: from as NSNumber) ?? ""

}

extension [Int] {
    func toString() -> String {
        return self.map { String($0) }.joined(separator: " ")
    }
}
