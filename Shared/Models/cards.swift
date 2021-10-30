//
//  cards.swift
//  cards
//
//  Created by Temi on 28/09/2021.
//

import Foundation
import SwiftUI
struct Cards: View {
    
    
    var card: Card
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [card.firstColor, card.SecondColor]), startPoint: .bottomLeading, endPoint: .topTrailing)
            VStack {
                
                HStack {
                    
                    
                    Text(card.FirstFournumber)
                        .foregroundColor(.white).opacity(0.7)
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                    
                    
                    Text(card.SecondFournumber)
                        .foregroundColor(.white).opacity(0.7)
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                    
                    
                    HStack (spacing: 3) {
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                        Circle()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white).opacity(0.7)
                        
                    }
                    
                    Text(card.number)
                        .foregroundColor(.white).opacity(0.7)
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                    
                
                }
                .padding(.top, 70)
                Spacer()
                
                HStack {
                    
                    VStack(alignment: .leading){
                        Text("VALID THRU")
                            .font(.system(size: 15, weight: .light, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.leading, 10)
                        
                        Text("3/23")
                            .font(.system(size: 20, weight: .regular, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.leading, 10)
                        
                    }
                    Spacer()
                    
                    
                    ZStack {
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.yellow).opacity(0.7)
                            .padding(.trailing, 40)
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red).opacity(0.7)
                    }
                    
                    
                }
                .padding(.bottom, 25)
            }
            
        }
        .frame(width: 325, height: 200)
        .cornerRadius(25)
        .animation(.spring())
        
    }
}


struct Card: Identifiable {
    var id = UUID()
    var number: String
    var FirstFournumber: String
    var SecondFournumber: String
    var firstColor: Color
    var SecondColor: Color
}

let cardData = [
    Card(number: "1234", FirstFournumber: "6768",SecondFournumber: "9876",firstColor: Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)), SecondColor: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))),
    Card(number: "4567", FirstFournumber: "6768",SecondFournumber: "9876", firstColor: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), SecondColor: Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))),
    Card(number: "7890", FirstFournumber: "6768",SecondFournumber: "9876", firstColor: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), SecondColor: Color(#colorLiteral(red: 0.631372549, green: 0.4078431373, blue: 1, alpha: 1))),
    Card(number: "1356", FirstFournumber: "6768",SecondFournumber: "9876", firstColor: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), SecondColor: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))),
    Card(number: "7653", FirstFournumber: "6768",SecondFournumber: "9876", firstColor: Color(#colorLiteral(red: 0.4392156863, green: 0.1058823529, blue: 1, alpha: 1)), SecondColor: Color(#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)))
    
]

