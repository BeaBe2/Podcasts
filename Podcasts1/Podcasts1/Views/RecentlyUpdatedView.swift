//
//  RecentlyUpdatedView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct RecentlyUpdatedView: View {
    @Environment(\.colorScheme) var colorScheme
    let recents: [Recent] = recentData

    var body: some View {
     
                VStack {
                    LazyVGrid(columns: [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)], spacing: 10) {
                        ForEach(recents) { recent in
                            VStack(alignment: .leading) {
                                Image(recent.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(10)
                                
                                Text(recent.title)
                                    .foregroundColor(.primary)
                                    .padding(.top, 1)
                                
                                Text(recent.lastUpdated)
                                    .foregroundColor(.primary)
                                    .font(.caption)
                                    .accessibility(label: Text(recent.lastUpdated))
                            }
                        }
                    }
                    .padding()
                
            .navigationTitle("Recently Updated")
        }
    }
}


#Preview {
    RecentlyUpdatedView()
}
