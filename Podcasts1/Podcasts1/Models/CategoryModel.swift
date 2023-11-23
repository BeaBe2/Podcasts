//
//  CategoryModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import Foundation
import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    var title: String
    var name: String
    var description: String
    var imageName: String
}

let categoriesData: [Category] = [
    Category(title: "Featured Category", name: "Comedy", description: "Divertiti con questi podcast...", imageName: "comedy"),
    Category(title: "New Show", name: "Sailor", description: "Seeing the sea", imageName: "sailor")
    
]
