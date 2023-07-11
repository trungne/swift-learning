//
//  main.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

func main() {
    print("Welcome!")
    
    while(true) {
        let menuChoice = handleMenuChoiceInpur()
        let gameChoice = handleGameChoiceInput(menuChoice: menuChoice)
        switch (menuChoice, gameChoice) {
            // 649
            case (MenuChoice.PLAY, GameType.LOTTERY_649):
                playGames(matchPrizeMap: MATCH_PRIZE_649_LOTTERY_MAP, minNumToDraw: MIN_LUCKY_NUMBER, maxNumToDraw: MAX_LUCKY_NUMBER)
    
            case (MenuChoice.ANALYZE, GameType.LOTTERY_649):
                analyzeGames(matchPrizeMap: MATCH_PRIZE_649_LOTTERY_MAP, ticketCost: 4, currency: "$")
            
            // VietLot
            case (MenuChoice.PLAY, GameType.VIETLOT):
                playGames(matchPrizeMap: MATCH_PRIZE_VIETLOT_MAP, minNumToDraw: MIN_LUCKY_NUMBER, maxNumToDraw: MAX_VIETLOT_LUCKY_NUMBER)
            
            case (MenuChoice.ANALYZE, GameType.VIETLOT):
                analyzeGames(matchPrizeMap: MATCH_PRIZE_VIETLOT_MAP, ticketCost: 10000, currency: "VND")

        }
        
        let continueToPlay = handleContinueToPlayInput()
        
        if (!continueToPlay) {
            break
        }
    }
    
    print("Bye!")
}

main()
