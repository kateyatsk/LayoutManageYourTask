//
//  CardData.swift
//  LayoutManageYourTask
//
//  Created by Екатерина Яцкевич on 11.05.25.
//

import SwiftUI

struct CardData: Hashable {
    let priority: String
    let photoName: String
    let date: String
    let text: String
    let numberOfComments: Int
    let numberOfSaves: Int
    let type: CardType
    
    static func createMockData() -> [CardData] {
        [
            CardData(
                priority: "Hight",
                photoName: "userPhoto",
                date: "20 march",
                text: "Lorem Ipsum is simply dummy text of the printing and typesetting",
                numberOfComments: 4,
                numberOfSaves: 16,
                type: .blue
            ),
            CardData(
                priority: "Low",
                photoName: "userPhoto",
                date: "20 march",
                text: "Lorem Ipsum is simply dummy text of the printing and",
                numberOfComments: 4,
                numberOfSaves: 16,
                type: .dark
            )
        ]
    }
}
