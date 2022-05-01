//
//  StorageManager.swift
//  Lesson 3.3 TimeCounter
//
//  Created by Константин Андреев on 01.05.2022.
//

import SwiftUI

class StorageManager: ObservableObject {
    @AppStorage("userName") var userName: String = ""
}
