//
//  TabBar.swift
//  TabBar
//
//  Created by Temi on 06/10/2021.
//

import SwiftUI

struct TabBar: View {
    
    @State private var currentTab: Tab = .Home
    
    @Namespace var animations
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            
            TabView(selection: $currentTab) {
                
                HomeView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(Tab.Home)
                TransactionsView()
                    .tag(Tab.liked)
                Text("search")
                    .tag(Tab.search)
                Text("settings")
                    .tag(Tab.settings)
            }
            
            CustomTabBar(animations: animations, currentTab: $currentTab)
            
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

enum Tab: String, CaseIterable{
    
    case Home = "house.fill"
    case liked = "bag"
    case settings = "gearshape"
    case search = "magnifyingglass"
}
