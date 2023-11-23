//
//  SearchView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct CollectionView: View {
    @Environment(\.colorScheme) var colorScheme
    let collections: [Collection]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(/*.flexible(), */spacing: 10), GridItem(.flexible(), spacing: 10)], spacing: 10) {
                ForEach(collections) { collection in
                    VStack {
                        Image(collection.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 180, height: 130)
                            .cornerRadius(10)
                            .overlay(
                                Text(collection.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .cornerRadius(8)
                                    .padding(3),
                                alignment: .bottomLeading
                            )
                            .accessibility(label: Text(collection.title))
                            .accessibility(addTraits: .isImage)
                    }
                    .clipped()
                }
            }
            .padding()
        }
    }
}

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Search, Episodes and More", text: $searchText)
                    .padding(EdgeInsets(top: 8, leading: 30, bottom: 8, trailing: 8))
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(5)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.horizontal, 10)
                                .accessibility(hidden: true)
                            Spacer()
                        }
                    )
                    .accessibility(label: Text("Search Episodes and More"))
                
                CollectionView(collections: collectionData)
            }
            .navigationTitle("Search")
        }
    }
}

#Preview {
    SearchView()
}

