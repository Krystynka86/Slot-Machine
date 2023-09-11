//
//  Modifiers.swift
//  Slot Machine
//
//  Created by Cristina on 2023-09-11.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("ColorTransparentBlack"), radius: 0, x: 0, y: 6)
    }
}
