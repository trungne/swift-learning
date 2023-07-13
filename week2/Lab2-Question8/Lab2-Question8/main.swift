//
//  main.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

func main() {
    print("Welcome!")
    var round = 0
    
    let gameChoice = handleGameChoiceInput()
    print("")
    let menuChoice = handleMenuChoiceInpur()
    print("")
    
    while(true) {
        let isFirstRound = round == 0
        if (!isFirstRound) {
            print("-----")
        }
        
        let matchPrizeMap = getMatchPrizeMap(game: gameChoice)
        let ticketCost = getTicketCost(game: gameChoice)
        let currency = getCurreny(game: gameChoice)
        let maxNumToDraw = getMaxNumToDraw(game: gameChoice)
        
        switch (menuChoice) {
            case .ANALYZE:
                analyzeGames(matchPrizeMap: matchPrizeMap,
                             ticketCost: ticketCost,
                             currency: currency,
                             minNumToDraw: MIN_LUCKY_NUMBER,
                             maxNumToDraw: maxNumToDraw)
             case .PLAY:
                playGames(
                    matchPrizeMap: matchPrizeMap,
                    minNumToDraw: MIN_LUCKY_NUMBER,
                    maxNumToDraw: maxNumToDraw
                )
        }
        
        
        print("")
        let continueToPlay = handleContinueToPlayInput()
        
        if (!continueToPlay) {
            break
        }
        
        round += 1
    }
    
    print("Bye!")
}

main()
