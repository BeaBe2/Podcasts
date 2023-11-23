//
//  TopShowsView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct TopShowView: View {
    @Environment(\.colorScheme) var colorScheme
    var topShows: [TopShow] = topShowsData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Top Shows")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                    .accessibilityLabel("Top Shows")
                
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .accessibilityHidden(true)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 20) {
                    ForEach(topShows) { show in
                        VStack {
                            TopShowsView(show: show)
                                .accessibilityLabel("\(show.title), \(show.categoryName), \(show.description)")
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct TopShowsView: View {
    var show: TopShow
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(show.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 140)
                .clipped()
                .cornerRadius(10)
            //                .accessibilityLabel(show.imageDescription) // Add a description for the image
            
            VStack(alignment: .leading, spacing: 5) {
                Text(show.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibilityLabel(show.title)
                Text(show.categoryName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibilityLabel(show.categoryName)
                
                Text(show.description)
                    .font(.caption)
                    .foregroundColor(.primary)
                    .accessibilityLabel(show.description)
            }
        }
    }
}





#Preview {
    TopShowView()
}
