//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Temi on 06/10/2021.
//

import SwiftUI

struct CustomTabBar: View {
    
    var animations: Namespace.ID
    @Binding var currentTab: Tab
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                
                TabButton(tab: tab, animation: animations, currentTab: $currentTab) { pressedTab in
                    
                    withAnimation(.spring()) {
                        
                        
                        currentTab = pressedTab
                        
                    }
                }
            }
            
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabButton: View {
    
    var tab: Tab
    var animation: Namespace.ID
    @Binding var currentTab: Tab
    
    var onTap:(Tab) -> ()
    
    var body: some View {
        
        Image(systemName: tab.rawValue)
            .foregroundColor(currentTab == tab ? .white : .gray)
            .frame(width: 45, height: 45)
            .background (
                
                ZStack {
                    
                    
                    if currentTab == tab {
                        
                        Circle()
                            .fill(Color.blue)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
            .frame(maxWidth: .infinity)
            .contentShape(Rectangle())
            .onTapGesture {
                onTap(tab)
            }
    }
    
}
