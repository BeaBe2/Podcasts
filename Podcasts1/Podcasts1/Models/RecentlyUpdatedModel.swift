//
//  RecentlyUpdatedModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import Foundation
import SwiftUI

struct Recent: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
    var lastUpdated: String
}

let recentData: [Recent] = [
    Recent(title: "Top Charts", imageName: "charts", lastUpdated: "Updated Friday"),
    Recent(title: "Podcasts in English", imageName: "speechbubbles", lastUpdated: "Updated Today"),
    Recent(title: "News", imageName: "news", lastUpdated: "Updated Monday"),
    Recent(title: "Society & Culture", imageName: "crowd", lastUpdated: "Updated Yesterday"),
    Recent(title: "True Crime", imageName: "fingerprint", lastUpdated: "Updated Last Week"),
    Recent(title: "Education", imageName: "pencil", lastUpdated: "Updated Today"),
   
]

