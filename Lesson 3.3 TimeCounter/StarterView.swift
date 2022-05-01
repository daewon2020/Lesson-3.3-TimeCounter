//
//  StarterView.swift
//  Lesson 3.3 TimeCounter
//
//  Created by Константин Андреев on 30.04.2022.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var storageManager: StorageManager
    
    var body: some View {
        Group {
            if storageManager.userName.isEmpty {
                LoginView(userName: $storageManager.userName)
            }else {
                MainView(userName: $storageManager.userName)
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
