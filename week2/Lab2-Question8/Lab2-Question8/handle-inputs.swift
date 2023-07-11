//
//  handle-inputs.swift
//  Lab2-Question8
//
//  Created by Trung Nguyen on 11/07/2023.
//

import Foundation

func handleInput() -> String? {
    guard let input = readLine() else {
        print("Invalid input")
        return nil
    }
    
    return input
}

func handleMenuChoiceInpur() -> MenuChoice {
    while(true) {
        print("Press 1 to play.")
        print("Press 2 to analyze.")
        
        guard let menuChoiceInput = handleInput() else {
            continue
        }
        
        guard let menuChoiceInt = Int(menuChoiceInput) else {
            print("\(menuChoiceInput) is not an integer. Please enter: \(MenuChoice.allCasesInString)")
            continue
        }
        
        guard let menuChoice = MenuChoice(rawValue: menuChoiceInt) else {
            print("\(menuChoiceInput) is not a valid choice. Please enter: \(MenuChoice.allCasesInString)")
            continue
        }
        
        return menuChoice
    }
}

func handleGameChoiceInput(menuChoice: MenuChoice) -> GameType {
    while(true) {
        print("Press 1 for 649 Lottery.")
        print("Press 2 for Vietlot.")
        
        guard let gameChoiceInput = handleInput() else {
            continue
        }
        
        guard let gameChoiceInput = Int(gameChoiceInput) else {
            print("\(gameChoiceInput) is not an integer. Please enter: \(GameType.allCasesInString)")
            continue
        }
        
        guard let gameChoice = GameType(rawValue: gameChoiceInput) else {
            print("\(gameChoiceInput) is not a valid choice. Please enter: \(GameType.allCasesInString)")
            continue
        }
        
        return gameChoice
    }
}


func handleGamesToPlayInput() -> Int {
    while (true) {
        print("How many games do you want to play?")
        
        guard let gamesInput = handleInput() else {
            continue
        }
        
        guard let games = Int(gamesInput) else {
            print("\(gamesInput) is not an integer. Please try again")
            continue
        }
        
        guard games > 0 else {
            print("Please enter number higher than 0, you entered: \(String(games))")
            continue
        }
        
        return games
    }
}

func handlePickOwnTicketNumbersInput() -> Bool {
    while (true) {
        print("Do you want to pick your own ticket numbers (true/false)")
        
        guard let input = handleInput() else {
            continue
        }
        
        if let input = Bool(input) {
            return input
        }
        
        print("'\(input)' is not a valid choice. Please try: true or false")
    }
}

func handleNumbersOfTicketInput(numToDraw: Int) -> [Int] {
    while (true) {
        print("Enter \(numToDraw) numbers of your ticket, separated by space, from \(MIN_LUCKY_NUMBER) to \(MAX_LUCKY_NUMBER): ")
        
        guard let input = handleInput() else {
            continue
        }
        
        let inputArr = input.components(separatedBy: " ")
        
        guard inputArr.count == numToDraw else {
            print("Please pick \(numToDraw) numbers of your tickets. You only picked \(inputArr.count)")
            continue
        }
        
        let numbers = inputArr.compactMap { Int($0) }.filter {
            $0 >= MIN_LUCKY_NUMBER && $0 <= MAX_LUCKY_NUMBER
        }
        
        guard numbers.count == inputArr.count else {
            print("Invalid input detected! Please only enter number")
            continue
        }
        
        
        let validNumbers = numbers.filter({ ($0 >= MIN_LUCKY_NUMBER && $0 <= MAX_LUCKY_NUMBER) })
        guard validNumbers.count == numToDraw else {
            print("One or more of the numbers are not between \(MIN_LUCKY_NUMBER) and \(MAX_LUCKY_NUMBER)")
            continue
        }
        
        
        
        return validNumbers
        
    }
}

func handleContinueToPlayInput() -> Bool {
    while (true) {
        print("Do you still want to continue to play? (true/false)")
        
        guard let input = readLine() else { continue }
        
        if let input = Bool(input) {
            return input
        }
        
        print("'\(input)' is not a valid choice. Please try: true or false")
    }
}

