//
//  LibraryModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import Foundation
import SwiftUI

struct Element {
    let title: String
    let imageName: String
}

struct LibraryModel {
    static let elements: [Element] = [
        Element(title: "Shows", imageName: "square.stack"),
        Element(title: "Channels", imageName: "checklist.unchecked"),
        Element(title: "Saved", imageName: "bookmark"),
        Element(title: "Downloaded", imageName: "arrow.down.circle"),
        Element(title: "Latest Episodes", imageName: "clock")
    ]
}
