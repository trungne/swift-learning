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
    currency: String,
    minNumToDraw: Int,
    maxNumToDraw: Int
) {
    let gamesToPlay = handleGamesToPlayInput()
    var totalMoneyWon = 0
    var totalTicketCost = 0
    
    var matchMap = Dictionary<Int, Int>()
    
    for _ in 0..<gamesToPlay {
        let userLuckyNumbers = getRandomLuckyNumbers(length: NUMBER_TO_DRAW, min: minNumToDraw, max: maxNumToDraw)
        
        let computerGeneratedRandomLuckyNumbers = getRandomLuckyNumbers(length: NUMBER_TO_DRAW, min: minNumToDraw, max: maxNumToDraw)
        
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
    print("")
    print("Total money won: \(formatNumber(from: totalMoneyWon))")
    print("Total ticket cost: \(formatNumber(from: totalTicketCost))")
    
    let keys = matchMap.keys
    let sortedKeys = keys.sorted(by: {$0 < $1})
    
    print("")
    for key in sortedKeys {
        guard let match = matchMap[key] else {
            continue
        }
        print("You match \(key) number(s): \(match) times(s)")
    }
    
    let profit = totalMoneyWon - totalTicketCost
    print("")
    print("Profit/Loss (won-cost): \(currency)\(formatCurrency(from: profit))")
            
}
