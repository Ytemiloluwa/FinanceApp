//
//  Login.swift
//  Login
//
//  Created by Temi on 28/09/2021.
//

import SwiftUI

struct Login: View {
    var body: some View {
        
        VStack{
            
            Render()
            
            Spacer()
            
            TextView()
            
            Spacer()
            
            LoginView()
        }
        
    }
    
    func Render() -> some View {
        
        HStack{
            
            
            Text("CitiBank")
                .font(.system(size: 30, weight: .regular, design: .rounded))
                .foregroundColor(.black)
            
            Spacer()
            
            Image(systemName: "chevron.right.circle")
                .resizable()
                .frame(width: 30, height: 30)
                .font(.body)
            
            
        }
        .padding()
    }
    
    func TextView() -> some View {
        
        return HStack {
            
            VStack(alignment: .leading, spacing: 30) {
                
                Text("Banking App")
                    .font(.system(size: 50, weight: .regular, design: .rounded))
                
                Text("Transfer Money")
                    .font(.system(size: 30, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.3))
                
                Text("Simplifies and speeds up processing international payments..")
                    .font(.body)
                    .foregroundColor(Color.black.opacity(0.7))
                
                
            }
        }.padding(.trailing, 70)
    
        
    }
    
    func LoginView() -> some View {
        
        VStack(spacing: 20) {
            
            Button(action: {}) {
                
                Text("Login")
                    .font(.system(size: 25, weight: .regular, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 50)
                    .background(Color.black)
                
            }
            
            Button(action: {}) {
                
                Text("Become a Client")
                    .font(.system(size: 25, weight: .regular, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 50)
                    .background(Color.blue)
                
            }
            
        }
    }
    
    struct Login_Previews: PreviewProvider {
        static var previews: some View {
            Login()
        }
    }
}
