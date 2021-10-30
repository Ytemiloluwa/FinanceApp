//
//  DateExt.swift
//  DateExt
//
//  Created by Temi on 28/09/2021.
//

import Foundation


extension Date{
    
    static var month: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM"
        return formatter.string(from: Date())
    }
    
    static func fullMonthName(short: String)-> String{
        let months = [
            "Jan":"January",
            "Feb":"February",
            "March":"Mar",
            "Apr":"April",
            "May":"May",
            "June":"June",
            "Jul":"July",
            "Aug":"August",
            "Sep":"September",
            "Oct":"October",
            "Nov":"November",
            "Dec":"December",
        ]
        
        return months[short] ?? "January"
    }
}

