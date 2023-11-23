//
//  TopShowsModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import Foundation
import SwiftUI

struct TopShow: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
    var categoryName: String
    var description: String
}

let topShowsData: [TopShow] = [
    TopShow(title: "1", imageName: "bea", categoryName: "Bea's life", description: "A set of strange events"),
    TopShow(title: "2", imageName: "herstory", categoryName: "HerStory", description: "Feminism explained"),
    TopShow(title: "3", imageName: "geography", categoryName: "Discoverly", description: "Learn mroe about the world")
]

