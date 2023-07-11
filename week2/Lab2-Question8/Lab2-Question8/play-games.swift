//
//  play-games.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 11/07/2023.
//

import Foundation


func playGames(
    matchPrizeMap: Dictionary<Int, Int>,
    minNumToDraw: Int,
    maxNumToDraw: Int
) {
    let gamesToPlay = handleGamesToPlayInput()
    
    for round in 0..<gamesToPlay {
        print("----- Game: \(round + 1) -----")
        
        let isPickingOwnTicketNumbers = handlePickOwnTicketNumbersInput()

        let userLuckyNumbers: [Int] = isPickingOwnTicketNumbers
        ?
            handleNumbersOfTicketInput(numToDraw: NUMBER_TO_DRAW, min: minNumToDraw, max: maxNumToDraw)
        :
            getRandomLuckyNumbers(length: NUMBER_TO_DRAW, min: minNumToDraw, max: maxNumToDraw)
        
        let computerGeneratedRandomLuckyNumbers = getRandomLuckyNumbers(length: NUMBER_TO_DRAW, min: minNumToDraw, max: maxNumToDraw)

        print("You have picked the ticket: \(userLuckyNumbers.toString())")
        print("The winning ticket is: \(computerGeneratedRandomLuckyNumbers.toString())")
        
        let matches = getMatches(choices: userLuckyNumbers, luckyNumbers: computerGeneratedRandomLuckyNumbers)
        print("Your ticket has matched \(matches) number(s)")
        
        let prize = getPrizeInDollars(matches: matches, matchPrizeMap: matchPrizeMap)
        print("You have won \(prize)")
        print("")
    }
    print("----------")
    print("Goodbye!")
}



