//
//  ExpenseModel.swift
//  ExpenseModel
//
//  Created by Temi on 28/09/2021.
//

import SwiftUI


struct Expense {
    
    var month: String = ""
    var budget: CGFloat = 0
    var consumed: CGFloat = 0
    var percentConsumed: CGFloat = 0
    private static let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    
    private static let day = ["S", "M", "T", "W", "T", "F", "S"]

    
    static func getRandom() -> [Expense]{
        months.map { month in
            
            let budget = CGFloat.random(in: 1000...5000)
            let consumed = CGFloat.random(in: 400...budget)
            let percentConsumed = consumed / budget
            
            return Expense(month: month, budget: budget , consumed: consumed, percentConsumed: percentConsumed)
        }
    }
    
}
