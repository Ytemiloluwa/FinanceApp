//
//  RingView.swift
//  RingView
//
//  Created by Temi on 06/10/2021.
//

import SwiftUI

struct RingView: View {
    
    var strokeWidth: CGFloat = 10
    var size: CGSize = CGSize(width: 70, height: 70)
    var color = Color.white
    var pathColor = Color.white.opacity(0.4)
    @Binding var percent: CGFloat
        
    var body: some View {
        ZStack {
            Circle()
                .stroke(style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                .frame(width: size.width, height: size.height)
                .foregroundColor(pathColor)
            
            Circle()
                .trim(from: 0, to: percent )
                .stroke(style: StrokeStyle(lineWidth: strokeWidth, lineCap: .round))
                .animation(.easeIn(duration: 1))
                .frame(width: size.width, height: size.height)
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: -90) )
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(percent: .constant(0.7))
    }
}
