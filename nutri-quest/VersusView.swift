//
//  VersusView.swift
//  nutri-quest
//
//  Created by Rayan Tarchoun on 14/06/2024.
//

import SwiftUI

struct VersusView: View {
    var body: some View {
        VStack(spacing: 20) {
            PointsView()
            ProteinView()
        }
        .padding()
    }
}

struct PointsView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Rayan")
                Spacer()
                Text("Versus")
                Spacer()
                Text("Imène")
            }
            .padding()
            .background(Color.green)
            .opacity(0.7)
            .cornerRadius(10)
            
            Text("Plus que 73 jours")
                .font(.largeTitle)
            
            HStack {
                VStack {
                    Text("73")
                    Text("Points")
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Text("22")
                    Text("Points")
                }
                .frame(maxWidth: .infinity)
            }
            
            HStack {
                VStack {
                    Text("12")
                    Text("Quêtes")
                }
                .frame(maxWidth: .infinity)
                
                VStack {
                    Text("12")
                    Text("Quêtes")
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct ProteinView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Détails")
                Spacer()
            }
            .padding(.leading)
            
            HStack {
                Text("Protéines")
                Spacer()
                ProgressBar(value: 0.5)
                Text("100g")
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct ProgressBar: View {
    var value: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.8)
                    .foregroundColor(Color.red)
                
                Rectangle()
                    .frame(width: min(CGFloat(self.value) * geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color.green)
    
            }
            .cornerRadius(45.0)
        }
    }
}

#Preview {
    VersusView()
}
