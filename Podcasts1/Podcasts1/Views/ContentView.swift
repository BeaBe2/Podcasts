//
//  ContentView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct ContentView: View {
    var categories: [Category] = categoriesData
    var featuredItems: [FeaturedItem] = featuredItemsData
    var topShows: [TopShow] = topShowsData
    @State private var selectedTab = 0
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            ListenNowView()
                .tabItem {
                    Label("Listen Now", systemImage: "play.rectangle")
                }
                .tag(0)
                .accessibility(label: Text("Listen Now Tab"))
            
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top, spacing: 20) {
                                ForEach(categories) { category in
                                    SectionView(category: category)
                                        .accessibility(label: Text("\(category.title) Section"))
                                }
                            }
                            .padding(.horizontal)
                        }
                        NewsView(featuredItems: featuredItems)
                            .accessibility(label: Text("Featured News"))
                        TopShowView(topShows: topShows)
                            .accessibility(label: Text("Top Shows"))
                    }
                    .navigationTitle("Browse")
                }
            }
            .tabItem {
                Label("Browse", systemImage: "square.split.2x2.fill")
            }
            .tag(1)
            .accessibility(label: Text("Browse Tab"))
            
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "square.stack")
                }
                .tag(2)
                .accessibility(label: Text("Library Tab"))
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(3)
                .accessibility(label: Text("Search Tab"))
        }
    }
}
    
        
        struct SectionView: View {
            var category: Category
            
            var body: some View {
                VStack(alignment: .leading, spacing: 10) {
                    Text(category.title)
                        .font(.caption)
                        .foregroundColor(Color(UIColor.systemBackground))
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(category.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                            
                            Text(category.description)
                                .font(.subheadline)
                                .foregroundColor(.primary)
                        }
                    }
                    Image(category.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 280, height: 150)
                        .clipped()
                        .cornerRadius(10)
                }
            }
        }
        
    

#Preview {
    ContentView()
}

