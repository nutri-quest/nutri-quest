//
//  ContentView.swift
//  nutri-quest
//
//  Created by Rayan Tarchoun on 14/06/2024.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QuestView()
                .tabItem {
                    Image(systemName: "leaf")
                    Text("Quêtes")
                }
            VersusView()
                .tabItem {
                    Image(systemName: "figure.martial.arts")
                    Text("Versus")
                    
                }
            
        }
    }
    
}



struct ContentView_Prewiews : PreviewProvider {
    static var previews : some View {
        ContentView ()
    }
}
