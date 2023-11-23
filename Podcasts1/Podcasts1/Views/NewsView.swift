//
//  NewsView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct NewsView: View{
    var featuredItems: [FeaturedItem] = featuredItemsData
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("New & Noteworthy")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                    .accessibilityLabel("New & Noteworthy")
                
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .accessibilityHidden(true)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 20) {
                    ForEach(featuredItems) { item in
                        VStack{
                            NewsItemView(item: item)
                                .accessibilityLabel("\(item.categoryName), last updated \(item.lastUpdated)")
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct NewsItemView: View {
    var item: FeaturedItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 140)
                .clipped()
                .cornerRadius(10)
              .accessibilityLabel(item.imageDescription) // Add a description for the image
            
            VStack(alignment: .leading, spacing: 5) {
                Text(item.categoryName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibilityLabel(item.categoryName)
                
                Text(item.lastUpdated)
                    .font(.subheadline)
                    .foregroundColor(.primary)
                    .accessibilityLabel("Last updated \(item.lastUpdated)")
            }
        }
    }
}


#Preview {
    NewsView()
}

