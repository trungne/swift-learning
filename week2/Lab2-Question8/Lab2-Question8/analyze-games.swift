//
//  analyze-games.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 12/07/2023.
//

import Foundation

func analyzeGames(
    matchPrizeMap: Dictionary<Int, Int>,
    ticketCost: Int,
    currency: String
) {
    let gamesToPlay = handleGamesToPlayInput()
    var totalMoneyWon = 0
    var totalTicketCost = 0
    
    var matchMap = Dictionary<Int, Int>()
    
    for _ in 0..<gamesToPlay {
        let userLuckyNumbers = getRandomLuckyNumbers(length: NUMBER_TO_DRAW)
        
        let computerGeneratedRandomLuckyNumbers = getRandomLuckyNumbers(length: NUMBER_TO_DRAW)
        
        let matches = getMatches(choices: userLuckyNumbers, luckyNumbers: computerGeneratedRandomLuckyNumbers)
        
        let prize = getPrizeInDollars(matches: matches, matchPrizeMap: matchPrizeMap)
        if let match = matchMap[matches] {
            matchMap[matches] = match + 1
        } else {
            matchMap[matches] = 1
        }
        totalMoneyWon += prize
        totalTicketCost += ticketCost
    }

    print("Total money won: \(formatNumber(from: totalMoneyWon))")
    print("Total ticket cost: \(formatNumber(from: totalTicketCost))")
    
    let keys = matchMap.keys
    let sortedKeys = keys.sorted(by: {$0 < $1})
    
    for key in sortedKeys {
        guard let match = matchMap[key] else {
            continue
        }
        print("You match \(key) number(s): \(match) times(s)")
    }
    
    let profit = totalMoneyWon - totalTicketCost
    print("Profit/Loss (won-cost): \(currency)\(formatCurrency(from: profit))")
            
}
