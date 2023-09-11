//
//  ContentView.swift
//  Slot Machine
//
//  Created by Cristina on 2023-09-11.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            // MARK: - BACKGROUND
            LinearGradient(
                gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]),
                startPoint: .top,
                endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            // MARK: - INTERFACE
            VStack(alignment: .center, spacing: 5) {
                // MARK: - HEADER
                
                LogoView()
                
                Spacer()
                
                // MARK: - SCORE
                HStack {
                    Text("Your\nCoins".uppercased())
                        
                    
                    Text("100")
                        .foregroundColor(Color.white)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.heavy)
                        .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 3)
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
                .frame(minWidth: 128)
                .background(
                    Capsule()
                        .foregroundColor(Color("ColorTransparentBlack"))
                )
                // MARK: - SLOT MACHINE
                // MARK: - FOOTER
                
                Spacer()
            } // VStack
            // MARK: - BUTTONS
            .overlay(
            // RESET
                Button(action: {
                    print("Reset the game!")
                }) {
                    Image(systemName: "arrow.2.circlepath.circle")
                }
                    .modifier(ButtonModifier()),
                alignment: .topLeading
            )
            .overlay(
            // INFO
                Button(action: {
                    print("Info View")
                }) {
                    Image(systemName: "info.circle")
                }
                    .modifier(ButtonModifier()),
                alignment: .topTrailing
            )
            .padding()
            .frame(maxWidth: 720)
            // MARK: - POPUP
        } // ZStack
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
