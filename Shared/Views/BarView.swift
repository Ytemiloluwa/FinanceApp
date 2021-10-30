//
//  BarView.swift
//  BarView
//
//  Created by Temi on 06/10/2021.
//

import Foundation
import SwiftUI

struct BarView: View {
    var size: CGSize = .zero
    var expense = Expense.getRandom().first!
    var isSelected = false
    var onSelected: ((Expense)->()) = {_ in }
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Capsule()
                    .frame(width: 3, height: size.height)
                    .foregroundColor(Color.lightGray)
                Capsule()
                    .frame(width: 3, height: size.height * expense.percentConsumed)
                    .foregroundColor(isSelected ? Color.blue : Color.gray)
            }       .animation(.easeIn(duration: 1) )

            
            Text(expense.month).font(.caption).foregroundColor(isSelected ? Color.blue : Color.purpleGray)
        }.frame(maxWidth: .infinity)
            .onTapGesture {
                self.onSelected(self.expense)
        }
    }
}
