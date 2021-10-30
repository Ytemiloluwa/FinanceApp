//
//  ExpenseBreakDownView.swift
//  ExpenseBreakDownView
//
//  Created by Temi on 06/10/2021.
//


import SwiftUI

struct ExpensesBreakdownView: View {
    
    @ObservedObject private var expensesBreakDown = ExpensesBreakDown()
    var categories = [ExpenseCategory]()
    @State var percent:CGFloat = 0.0

    
    var body: some View {
        VStack{
            HStack{
                Text("Total Transactions").bold()
                Spacer()
                Text("$\(String(format: "%.2f", expensesBreakDown.expense.consumed))").bold()
            }.padding(.vertical)
            
            VStack(spacing: 0) {
                ForEach(categories){ category in
                    ExpenseCategoryView(category: category)
                }
            }
        }
    }
}


struct ExpensesBreakdownView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesBreakdownView()
    }
}
