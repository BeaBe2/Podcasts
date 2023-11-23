//
//  UpNextModel.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//
import Foundation
import SwiftUI

struct UpNext: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
    var time: String
    var description: String
}

let upNextData: [UpNext] = [
    UpNext(title: "Capital Sweets", imageName: "candy", time: "28m", description: "A podcast exploring the irresistible allure of..."),
    UpNext(title: "Climate Chronicles", imageName: "climate", time: "2h 9m", description: "An insightful podcast dissecting the..."),
    UpNext(title: "Architecture", imageName: "architecture", time: "21m", description: "A podcast delving into the soul of structures...")
]

