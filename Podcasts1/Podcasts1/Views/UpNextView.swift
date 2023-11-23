//
//  UpNextView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct UpNextView: View {
    @Environment(\.colorScheme) var colorScheme
    var upNext: [UpNext] = upNextData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Up Next")
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
                    .padding(.bottom, 5)
                    .accessibility(label: Text("Up Next"))
                Image(systemName: "chevron.right")
                    .accessibility(hidden: true)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(upNextData) { item in
                        UpNextItemView(upNext: item)
                    }
                }
                .padding(.bottom, 10)
                .padding(.leading, 5)
            }
        }
        .foregroundColor(.primary)
    }
}

struct UpNextItemView: View {
    var upNext: UpNext
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .bottomLeading) {
                Image(upNext.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 200, idealWidth: 200, maxWidth: .infinity, minHeight: 270, idealHeight: 270, maxHeight: 270)
                    .cornerRadius(15)
                    .accessibility(label: Text(upNext.title))
                
                LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                    .frame(width: 200, height: 270)
                    .cornerRadius(15)
                    .accessibility(hidden: true)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(upNext.title)
                        .font(.headline)
                        .foregroundColor(.white)
                        .accessibility(label: Text(upNext.title))
                    
                    Text(upNext.description)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                        .accessibility(label: Text(upNext.description))
                    
                    RoundedRectangle(cornerRadius: 17)
                        .frame(height: 30)
                        .foregroundColor(.white)
                        .overlay(
                            HStack {
                                Image(systemName: "play.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 20))
                                    .accessibility(label: Text("Play Button"))
                                
                                Text(upNext.time)
                                    .foregroundColor(.primary)
                                    .font(.caption)
                                    .accessibility(label: Text(upNext.time))
                            }
                        )
                }
                .padding()
            }
        }
        .frame(width: 200, height: 270)
        .cornerRadius(15)
        .padding(.trailing, 10)
        .accessibilityElement(children: .ignore)
    }
}




#Preview {
    UpNextView()
}
