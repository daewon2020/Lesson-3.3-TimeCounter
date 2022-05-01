//
//  ContentView.swift
//  Lesson 3.3 TimeCounter
//
//  Created by Константин Андреев on 30.04.2022.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @State private var characterCount = 0
    @State private var characterCountColor = Color(.red)
    @State private var buttonColor = Color(.gray)
    @State private var isDisabled = true
    @Binding var userName: String
    
    var body: some View {
        
        VStack{
            HStack {
                TextField("Enter your name", text: $name)
                    .onChange(of: name) { newValue in
                        textFieldDidChanged(textValue: newValue)
                    }.multilineTextAlignment(.center)
                
                Text("\(characterCount)")
                    .foregroundColor(characterCountColor)
            }
            HStack {
                Button(action: { userName = name }) {
                    Image(systemName: "checkmark.circle")
                    Text("Log In")
                }.foregroundColor(buttonColor)
                    .disabled(isDisabled)
            }.padding(.top, 10)
        }.padding()
    }
}

//----------
//MARK: - Private methods
//----------
extension LoginView {
    private func textFieldDidChanged(textValue: String) {
        characterCount = textValue.count
        characterCountColor = textValue.count > 2 ? .green: .red
        buttonColor = textValue.count > 2 ? .blue : .gray
        isDisabled = textValue.count > 2 ? false : true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(userName: .constant("Kostya"))
    }
}


