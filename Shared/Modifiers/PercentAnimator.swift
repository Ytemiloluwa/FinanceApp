//
//  PercentAnimator.swift
//  PercentAnimator
//
//  Created by Temi on 28/09/2021.
//

import Foundation

import SwiftUI

struct PercentAnimator: AnimatableModifier {
    
    var value: CGFloat = 0
    var font: Font = .system(size: 18, weight: .light, design: .rounded)
    var color: Color = .white
    var prefix = ""
    var suffix = ""
    
    var animatableData: CGFloat{
        get { value }
        set { value = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(TextView(value: value, font: font, color: color, prefix: prefix,suffix: suffix))
        
    }
    
}

struct TextView: View {
    let value: CGFloat
    var font: Font = .footnote
    var color: Color = .white
    var prefix = ""
    var suffix = ""
    
    var body: some View {
        Text("\(prefix)\(Int(value))\(suffix)")
            .foregroundColor(color)
            .font(font)
    }
}

