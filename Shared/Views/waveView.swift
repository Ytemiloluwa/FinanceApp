//
//  waveView.swift
//  waveView
//
//  Created by Temi on 28/09/2021.
//


import SwiftUI

struct Wave: Shape {
    // allow SwiftUI to animate the wave phase
    var animatableData: Double {
        get { phase }
        set { self.phase = newValue }
    }
    
    // how high our waves should be
    var strength: Double
    
    // how frequent our waves should be
    var frequency: Double
    
    // how much to offset our waves horizontally
    var phase: Double
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath()
        
        // calculate some important values up front
        let width = Double(rect.width)
        let height = Double(rect.height)
        let midWidth = width / 2
        let midHeight = height / 2
        let oneOverMidWidth = 1 / midWidth
        
        // split our total width up based on the frequency
        let wavelength = width / frequency
        
        // start at the left center
        path.move(to: CGPoint(x: 0, y: midHeight))
        
        // now count across individual horizontal points one by one
        for x in stride(from: 0, through: width, by: 1) {
            // find our current position relative to the wavelength
            let relativeX = x / wavelength
            
            // find how far we are from the horizontal center
            let distanceFromMidWidth = x - midWidth
            
            // bring that into the range of -1 to 1
            let normalDistance = oneOverMidWidth * distanceFromMidWidth
            
            let parabola = -(normalDistance * normalDistance) + 1
            
            // calculate the sine of that position, adding our phase offset
            let sine = sin(relativeX + phase)
            
            // multiply that sine by our strength to determine final offset, then move it down to the middle of our view
            let y = parabola * strength * sine + midHeight
            
            // add a line to here
            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        return Path(path.cgPath)
    }
}

struct Waveview: View {
    @State private var phase = 0.0
    var body: some View {
        
        VStack{
            
            VStack(spacing: -5){
                
                Text("Today")
                    
                HStack{
                    Text("Debit").bold()
                        .foregroundColor(.red)
                    
                    Spacer()
                    Text("$7\(String(format: "%.2f"))").bold()
                        .foregroundColor(.red)
                    
                    
                }.padding()
                
                HStack{
                    Text("Credit").bold()
                        .foregroundColor(.green)
                    
                    Spacer()
                    Text("$4\(String(format: "%.2f"))").bold()
                        .foregroundColor(.green)
                    
                    
                }.padding()
            }
            ZStack {
                
                ForEach(0..<5) { i in
                    Wave(strength: 50, frequency: 10, phase: self.phase)
                        .stroke(Color.blue.opacity(Double(i) / 10), lineWidth: 5)
                        .offset(y: CGFloat(i) * 5)
                }
                
                ForEach(0..<5) { i in
                    Wave(strength: 50, frequency: 8, phase: self.phase)
                        .stroke(Color.blue.opacity(Double(i) / 10), lineWidth: 5)
                        .offset(x: -30, y: CGFloat(i) * 5)
                }
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                    self.phase = .pi * 2
                }
            }
        }
    }
    
}

struct Waveview_Previews: PreviewProvider {
    static var previews: some View {
        Waveview()
    }
}
