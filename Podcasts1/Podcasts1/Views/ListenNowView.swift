//
//  ListenNowView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct ListenNowView: View {
    @Environment(\.colorScheme) var colorScheme
    var mightLikes: [MightLike] = mightLikeData
    var topShows: [TopShow] = topShowsData
    @State private var selectedTab = 0
    @State private var isAccountViewPresented = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("You Might Like")
                            .font(.title)
                            .bold()
                            .foregroundColor(.primary)
                            .padding(.bottom, 5)
                            .accessibilityLabel("You Might Like")
                        
                        Image(systemName: "chevron.right")
                            .font(.headline)
                            .accessibilityHidden(true)
                    }
                    .padding()
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 20) {
                            ForEach(mightLikes) { mightLike in
                                SectionView1(mightLike: mightLike)
                                    .accessibilityLabel("\(mightLike.categoryName), last updated \(mightLike.lastUpdated)")
                            }
                        }
                        .padding(.horizontal)
                    }
                    PopularShowView()
                    UpNextView()
                        .padding(.leading)
                    
                }
                .navigationTitle("Listen Now")
                .navigationBarItems(trailing:
                                        Button(action: {
                    isAccountViewPresented.toggle()
                }) {
                    Image(systemName: "person.crop.circle")
                        .font(.title)
                        .foregroundColor(.primary)
                        .padding(.trailing)
                }
                )
                .sheet(isPresented: $isAccountViewPresented) {
                    AccountView()
                }
            }
        }
    }
}

struct SectionView1: View {
    var mightLike: MightLike
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Image(mightLike.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 140)
                .clipped()
                .cornerRadius(10)
            //                .accessibilityLabel(mightLike.imageDescription) // Adding a description for the image
            
            VStack(alignment: .leading, spacing: 5) {
                Text(mightLike.categoryName)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .accessibilityLabel(mightLike.categoryName)
                
                Text(mightLike.lastUpdated)
                    .font(.caption)
                    .foregroundColor(.primary)
                    .accessibilityLabel("Last updated \(mightLike.lastUpdated)")
            }
        }
    }
}



#Preview {
    ListenNowView()
}

