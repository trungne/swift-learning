//
//  main.swift
//  Lab2-Question4
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

struct User {
    var name: String
    var email: String?
    var followers: Int
    var isActive: Bool
    
    func logStatus() {
        if (isActive) {
            print("\(name) is working hard")
        }
        else {
            print("\(name) has left earth")
        }
    }
    init(name: String, email: String? = nil, followers: Int, isActive: Bool) {
        self.name = name
        self.email = email
        self.followers = followers
        self.isActive = isActive
    }
}

var jerry = User(name: "Jerry", followers: 0, isActive: false)
jerry.logStatus()

print("\nDiagnostic code to test your User struct:")
var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
musk.logStatus()

print("Contacting \(musk.name) on \(musk.email!) ...")
print("\(musk.name) has \(musk.followers) followers")
// sometime later
musk.isActive = false
musk.logStatus()
