//
//  main.swift
//  Lab2-Question6
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

let alphabet =
["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]


func genRandomPassword(length: Int) -> String {
    var password = ""
    for _ in 0..<length {
        let index = Int.random(in: 0..<alphabet.count)
        password += alphabet[index]
    }
    return password
}

//The number of letters in alphabet equals 26
let password = genRandomPassword(length: 6)
print(password)

