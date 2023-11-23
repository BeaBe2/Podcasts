//
//  MightLikeModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//
import Foundation
import SwiftUI

struct MightLike: Identifiable {
    var id = UUID()
    var imageName: String
    var categoryName: String
    var lastUpdated: String
}

let mightLikeData: [MightLike] = [
    MightLike(imageName: "culture", categoryName: "Society & Culture", lastUpdated: "Yesterday"),
    MightLike(imageName: "politics", categoryName: "Politics", lastUpdated: "Last Week"),
    MightLike(imageName: "science", categoryName: "Science", lastUpdated: "Today")
]
