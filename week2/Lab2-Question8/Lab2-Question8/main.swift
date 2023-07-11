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
    
    while(true) {
        let isFirstRound = round == 0
        if (!isFirstRound) {
            print("-----")
        }
        
        let menuChoice = handleMenuChoiceInpur()
        print("")
        let gameChoice = handleGameChoiceInput(menuChoice: menuChoice)
        print("")
        switch (menuChoice, gameChoice) {
            // 649
            case (MenuChoice.PLAY, GameType.LOTTERY_649):
                playGames(
                    matchPrizeMap: MATCH_PRIZE_649_LOTTERY_MAP,
                    minNumToDraw: MIN_LUCKY_NUMBER,
                    maxNumToDraw: MAX_LUCKY_NUMBER
                )
    
            case (MenuChoice.ANALYZE, GameType.LOTTERY_649):
                analyzeGames(
                    matchPrizeMap: MATCH_PRIZE_649_LOTTERY_MAP,
                    ticketCost: 4,
                    currency: "$",
                    minNumToDraw: MIN_LUCKY_NUMBER,
                    maxNumToDraw: MAX_LUCKY_NUMBER)
            
            // VietLot
            case (MenuChoice.PLAY, GameType.VIETLOT):
                playGames(
                    matchPrizeMap: MATCH_PRIZE_VIETLOT_MAP,
                    minNumToDraw: MIN_LUCKY_NUMBER,
                    maxNumToDraw: MAX_VIETLOT_LUCKY_NUMBER)
            
            case (MenuChoice.ANALYZE, GameType.VIETLOT):
                analyzeGames(
                    matchPrizeMap: MATCH_PRIZE_VIETLOT_MAP,
                    ticketCost: 10000,
                    currency: "VND",
                    minNumToDraw: MIN_LUCKY_NUMBER,
                    maxNumToDraw: MAX_LUCKY_NUMBER)

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
