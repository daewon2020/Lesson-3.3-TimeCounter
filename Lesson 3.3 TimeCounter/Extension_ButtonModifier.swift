//
//  Extension_ButtonModifier.swift
//  Lesson 3.3 TimeCounter
//
//  Created by Константин Андреев on 30.04.2022.
//

import SwiftUI

struct CustomButtonStyle: ViewModifier {
    let backgroundColor: Color
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(width: 200, height: 60)
            .font(.title)
            .background(backgroundColor)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(.black), lineWidth: 4))
    }
}

extension Button {
    func customButtonStyle(backgroundColor: Color) -> some View {
        ModifiedContent(content: self, modifier: CustomButtonStyle(backgroundColor: backgroundColor))
    }
}
