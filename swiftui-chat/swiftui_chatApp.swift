//
//  swiftui_chatApp.swift
//  swiftui-chat
//
//  Created by Rodrigo Soares on 16/03/23.
//

import SwiftUI

@main
struct swiftui_chatApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
