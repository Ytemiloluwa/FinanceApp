//
//  BarChartView.swift
//  BarChartView
//
//  Created by Temi on 06/10/2021.
//

import Foundation
import SwiftUI


struct BarChartView: View {
    var expenses = Expense.getRandom()
    @State var selectedExpense = Expense()
    var onSelected: ((Expense)->()) = {_ in }

    var body: some View {
        GeometryReader { gr in
            HStack(alignment: .bottom, spacing: 3) {
                ForEach(self.expenses, id: \.month){ expense in
                    BarView(size: gr.size, expense: expense, isSelected:  self.selectedExpense.month == expense.month, onSelected: { selectedExp in
                        self.selectedExpense = selectedExp
                        self.onSelected(selectedExp)
                    })
                }
            }.frame(maxWidth: .infinity ,maxHeight: .infinity, alignment: .bottom)
            .onAppear {
                self.selectedExpense = Expense.getRandom().first(where: { $0.month == Date.month })!
            }
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
