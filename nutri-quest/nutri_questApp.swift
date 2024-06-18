//
//  nutri_questApp.swift
//  nutri-quest
//
//  Created by Rayan Tarchoun on 14/06/2024.
//

import SwiftUI

@main
struct nutri_questApp: App {
    var body: some Scene {
        WindowGroup {
            QuestView()
            ContentView()
            VersusView()
        }
    }
}
