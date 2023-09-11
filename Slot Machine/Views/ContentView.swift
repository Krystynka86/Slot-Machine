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
                Image("gfx-slot-machine")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 256, idealWidth: 300, maxWidth: 320, minHeight: 112, idealHeight: 130, maxHeight: 140, alignment: .center)
                    .padding(.horizontal)
                    .layoutPriority(1)
                    .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 6)
                
                // MARK: - SCORE
                // MARK: - SLOT MACHINE
                // MARK: - FOOTER
            } // VStack
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
