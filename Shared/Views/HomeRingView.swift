//
//  RingView.swift
//  RingView
//
//  Created by Temi on 28/09/2021.
//
import SwiftUI

struct HomeRingView: View {
    
    var strokeWidth: CGFloat = 10
    var size: CGSize = CGSize(width: 100, height: 100)
    var color = Color.blue
    var pathColor = Color.blue.opacity(0.2)
    @Binding var percent: CGFloat
    
    var body: some View {
        HStack(spacing: 120){
            VStack {
                
                Text("Account balance")
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                    
                Text("$11,700.45")
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .foregroundColor(.blue)
                
            }
            
            VStack {
                
                Text("Transfer Limit")
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                Text("$100.00")
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                    .foregroundColor(.blue)
            }
            
        }
        .padding(.top, -60)
    }
}

struct HomeRingView_Previews: PreviewProvider {
    static var previews: some View {
        HomeRingView(percent: .constant(0.7))
    }
}
