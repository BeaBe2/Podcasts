//
//  SearchModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import Foundation
import SwiftUI

struct Collection: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
}

let collectionData: [Collection] = [
    Collection(title: "Top Charts", imageName: "charts"),
    Collection(title: "Podcasts in English", imageName: "speechbubbles"),
    Collection(title: "News", imageName: "news"),
    Collection(title: "Society & Culture", imageName: "crowd"),
    Collection(title: "True Crime", imageName: "fingerprint"),
    Collection(title: "Education", imageName: "pencil"),
    Collection(title: "Business", imageName: "technology"),
    Collection(title: "Health & Fitness", imageName: "fitness"),
    Collection(title: "History", imageName: "ancient"),
    Collection(title: "Mental Health", imageName: "mentalhealth"),
    Collection(title: "Science", imageName: "particles")
]

