//
//  main.swift
//  Lab2-Question5
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

print("Hello, World!")

class Point {
    private let x: Double
    private let y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func distance(target: Point) -> Double {
        let squareDistanceBetweenX = pow((x - target.x), 2)
        let squareDistanceBetweenY = pow((y - target.y), 2)
        return sqrt(squareDistanceBetweenX + squareDistanceBetweenY)
    }
}

enum InputError: Error {
    case invalidInput
}

print("Enter first x: ")
guard let firstXInput = readLine(), let firstX = Double(firstXInput) else {
    throw InputError.invalidInput
}

print("Enter first y: ")
guard let firstYInput = readLine(), let firstY = Double(firstYInput) else {
    throw InputError.invalidInput
}


print("Enter second x: ")
guard let secondXInput = readLine(), let secondX = Double(secondXInput) else {
    throw InputError.invalidInput
}

print("Enter second y: ")
guard let secondYInput = readLine(), let secondY = Double(secondYInput) else {
    throw InputError.invalidInput
}

let firstPoint = Point(x: firstX, y: firstY)
let secondPoint = Point(x: secondX, y: secondY)

let distanceBetweenPoints = firstPoint.distance(target: secondPoint)
print("The distance between X and Y is \(distanceBetweenPoints)")
