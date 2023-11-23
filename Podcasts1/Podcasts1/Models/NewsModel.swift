//
//  NewsModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import Foundation
import SwiftUI

struct FeaturedItem: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
    var categoryName: String
    var lastUpdated: String
    var imageDescription: String
}

let featuredItemsData: [FeaturedItem] = [
    FeaturedItem(title: "Item 1", imageName: "art", categoryName: "Arts", lastUpdated: "Updated Today", imageDescription: "A neon sign reads This is the sign you were looking for"),
    FeaturedItem(title: "Item 2", imageName: "society", categoryName: "Society & Culture", lastUpdated: "Updated Friday", imageDescription:"A school playground with a nice murales"),
    FeaturedItem (title: "Item 3", imageName: "crime", categoryName: "True Crime", lastUpdated: "Updated Yesterday", imageDescription: "A Do Not Cross yellow tape of a crime scene" ),
    FeaturedItem(title: "Item 4", imageName: "sailor", categoryName: "Society & Culture", lastUpdated: "Monthly", imageDescription:"A striped white and blue umbrella")
]
