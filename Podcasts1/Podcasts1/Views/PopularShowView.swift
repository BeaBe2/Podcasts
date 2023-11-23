//
//  PopularShowView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct PopularShowView: View {
    @Environment(\.colorScheme) var colorScheme
    var popularShows: [PopularShow] = popularShowData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Popular Shows")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                    .accessibilityLabel("Popular Shows")
                
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .accessibilityHidden(true)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 20) {
                    ForEach(popularShows) { popularShow in
                        VStack {
                            PopularShowsView(popularShow: popularShow)
                                .accessibilityLabel("\(popularShow.categoryName), last updated \(popularShow.lastUpdated)")
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct PopularShowsView: View {
    var popularShow: PopularShow
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(popularShow.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 140)
                .clipped()
                .cornerRadius(10)
            //                .accessibilityLabel(popularShow.imageDescription) // Adding a description for the image
            
            VStack(alignment: .leading, spacing: 5) {
                Text(popularShow.categoryName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibilityLabel(popularShow.categoryName)
                
                Text(popularShow.lastUpdated)
                    .font(.caption)
                    .foregroundColor(.primary)
                    .accessibilityLabel("Last updated \(popularShow.lastUpdated)")
            }
        }
    }
}


#Preview {
    PopularShowView()
}
