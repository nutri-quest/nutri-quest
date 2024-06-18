//
//  TabView.swift
//  nutri-quest
//
//  Created by Rayan Tarchoun on 17/06/2024.
//

import SwiftUI

struct QuestView: View {
    @State private var selectedFilter: QuestType = .weightLoss

    private var allQuests = [
        Quest(name: "Quête n°1", type: .weightLoss),
        Quest(name: "Quête n°2", type: .weightGain),
        Quest(name: "Quête n°3", type: .maintenance),
        Quest(name: "Quête n°4", type: .weightLoss),
        Quest(name: "Quête n°5", type: .weightGain),
        Quest(name: "Quête n°6", type: .maintenance)
    ]

    var filteredQuests: [Quest] {
        allQuests.filter { $0.type == selectedFilter }
    }

    var body: some View {
        NavigationView {
            VStack {
                Image("image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()

                Picker("Filter", selection: $selectedFilter) {
                    ForEach(QuestType.allCases) { questType in
                        Text(questType.rawValue).tag(questType)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()

                List(filteredQuests) { quest in
                    HStack {
                        Image(systemName: "square.fill")
                            .foregroundColor(.green)
                        Text(quest.name)
                    }
                    .padding(.vertical)
                }
            }
            .navigationBarTitle("Quêtes", displayMode: .inline)
        }
    }
}

struct QuestType: Identifiable, Hashable {
    let id = UUID()
    let rawValue: String

    static let weightLoss = QuestType(rawValue: "Perte de poids")
    static let weightGain = QuestType(rawValue: "Prise de poids")
    static let maintenance = QuestType(rawValue: "Maintien")

    static let allCases: [QuestType] = [.weightLoss, .weightGain, .maintenance]
}

struct Quest: Identifiable {
    let id = UUID()
    let name: String
    let type: QuestType
}


#Preview {
    QuestView()
}
