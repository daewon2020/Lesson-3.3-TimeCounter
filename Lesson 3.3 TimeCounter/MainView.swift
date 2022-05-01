//
//  MainView.swift
//  Lesson 3.3 TimeCounterView
//
//  Created by Константин Андреев on 30.04.2022.
//

import SwiftUI

struct MainView: View {
    @Binding var userName: String
    @StateObject var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("HI, \(userName)")
                .font(.largeTitle)
                .padding(.top, 30)
            
            Spacer()
            
            Text("\(timer.counter)")
                .padding(.bottom, 10)
                .font(.title)
            
            Button(action: { timer.startCount() }) {
                Text("\(timer.buttonTitle)")
            }.customButtonStyle(backgroundColor: .red)
            
            Spacer()
            
            Button(action: { userName = "" }) {
                Text("Log Out")
            }.customButtonStyle(backgroundColor: .blue)
        }.padding()
    }
}


struct TimeCounter_Previews: PreviewProvider {
    static var previews: some View {
        MainView(userName: .constant("Kostya"))
    }
}

