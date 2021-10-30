//
//  HomeView.swift
//  HomeView
//
//  Created by Temi on 28/09/2021.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        
        
        return VStack(spacing: 50){
            
            CardScreen()
   
            HomeRingView(percent: .constant(0.7))
                
            Waveview()
                .frame(height: 300)
            
            Spacer()
          
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

