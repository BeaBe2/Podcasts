//
//  PopularShowsModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import Foundation
import Foundation
import SwiftUI

struct PopularShow: Identifiable {
    var id = UUID()
    var imageName: String
    var categoryName: String
    var lastUpdated: String
}

let popularShowData: [PopularShow] = [
    PopularShow(imageName: "language", categoryName: "Language Learning", lastUpdated: "Weekly series"),
    PopularShow(imageName: "philosophy", categoryName: "Philosphy", lastUpdated: "Complete series"),
    PopularShow(imageName: "film", categoryName: "Tv & Film", lastUpdated: "Daily")
]
