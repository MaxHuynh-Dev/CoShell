//
//  CoShellApp.swift
//  CoShell
//
//  Created by Đạt Huỳnh on 6/1/26.
//

import SwiftUI

@main
struct CoShellApp: App {
    // Thêm init này để làm chậm app lại 2 giây
    init() {
        Thread.sleep(forTimeInterval: 2.0)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
