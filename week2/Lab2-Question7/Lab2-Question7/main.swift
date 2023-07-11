//
//  main.swift
//  Lab2-Question7
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

func doMath(a: Int, b: Int, operation: (Int, Int) -> Int) {
    print(operation(a, b))
}

// Call doMath function and provide an inline closure so that it will return the larger value between two numbers and print it out
print("larger number")
doMath(a: 6, b: 3, operation: {
    (a: Int, b: Int) -> Int in a > b ? a : b
})

doMath(a: 6, b: 3, operation: {
    a, b in a > b ? a : b
})

doMath(a: 6, b: 3, operation: {
    $0 > $1 ? $0 : $1
})

doMath(a: 6, b: 3) {
    $0 > $1 ? $0 : $1
}


print("multiplication")
// Call doMath function again and this time provide an another inline closure so that it will multiple two numbers together and print it out

doMath(a: 2, b: 2, operation: {
    (a: Int, b: Int) -> Int in a * b
})

doMath(a: 2, b: 2, operation: {a,b in a*b})
doMath(a: 2, b: 2, operation: {$0 * $1})
doMath(a: 2, b: 2) {
    $0 * $1
}
