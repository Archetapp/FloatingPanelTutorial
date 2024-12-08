//
//  TutorialApp.swift
//  Tutorial
//
//  Created by Jared Davidson on 12/8/24.
//

import SwiftUI

@main
struct TutorialApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}
