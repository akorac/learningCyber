//
//  CyberStudyAppApp.swift
//  CyberStudyApp
//
//  Created by Amar Korac on 1/28/23.
//

import SwiftUI

@main
struct CyberStudyApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(ContentModel())
        }
    }
}
