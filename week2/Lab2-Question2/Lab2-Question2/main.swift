//
//  main.swift
//  Lab2-Question2
//
//  Created by Trung Nguyen on 10/07/2023.
//

import Foundation

var funFactsRMIT: [String: Int] = [
    "numberOfStudents" : 6500,
    "numberScholarships": 1100,
    "numberOfGraduates": 12000,
    "numberMasterPrograms": 3,
    "numberPhDPrograms": 3,
    "numberStudentClubs": 35,
    "numberExchangePartners": 200,
]

// The number of student clubs is 43 instead of 35
funFactsRMIT["numberStudentClubs"] = 43
funFactsRMIT["numberOfGraduates"] = 12000
funFactsRMIT["worldUniversityRankingQS2022"] = 206
funFactsRMIT["impactRankingGlobally"] = 3
funFactsRMIT["yearFounded"] = 1887
funFactsRMIT["numberOfStaffs"] = 9150


print("These are fun facts about RMIT \(funFactsRMIT as AnyObject)")
print("There are \(funFactsRMIT.count) facts in our fun facts dictionary about RMIT!")
