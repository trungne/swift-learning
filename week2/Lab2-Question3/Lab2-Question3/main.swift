//
//  main.swift
//  Lab2-Question3
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

print("Hello, World!")


func divideIfWhole(value: Int, divisor: Int) -> Int? {
    if (value % divisor != 0){
        return nil
    }
    
    return value / divisor
}

func getInt(message: String) -> Int {
    while(true) {
        print(message)
        guard let input = readLine() else {
            print("Invalid input")
            continue
        }
        
        guard let value = Int(input) else {
            print("Please enter an integer")
            continue
        }
        
        return value
    }
}

let value = getInt(message: "Enter the value: ")
let divisor = getInt(message: "Enter the divisor: ")


if let divideTimes = divideIfWhole(value: value, divisor: divisor)
 {
    print("Yep, it divides \(divideTimes) times")
}
else {
    print("Not divisible")
}

print("Enter the value")
if let inputValue = readLine(),
    let inputInteger = Int(inputValue),
    let divisorValue = readLine(),
    let divisorInteger = Int(divisorValue),
    let divideTimes = divideIfWhole(value: inputInteger, divisor: divisorInteger) {
    print("Yep, it divides \(divideTimes) times")
}
else {
    print("Not divisible")
}


