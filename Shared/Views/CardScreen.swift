//
//  CardView.swift
//  CardView
//
//  Created by Temi on 28/09/2021.
//

import SwiftUI

struct CardScreen: View {
    
    var body: some View {
        
        VStack(spacing: -30){
            
            HStack{
                
                Image("Temi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black,lineWidth: 2))
                    .shadow(radius: 10)
                
                Spacer()
                
                Text("CitiBank")
                    .font(.system(size: 30, weight: .regular, design: .rounded))
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .font(.body)
                
                
            }.padding()
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 20) {
                    ForEach(cardData) { item in
                        GeometryReader { geometry in
                            Cards(card: item)
                            
                        }
                        .frame(width: 400, height: 200)
                    }
                    
                }
                .frame(height: 300)
                .padding(.leading, 50.0)
                
            }
        }
    }
}

struct CardScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardScreen()
    }
}

