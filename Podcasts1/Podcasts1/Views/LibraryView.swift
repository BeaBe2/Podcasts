//
//  LibraryView.swift
//  Podcasts1
//
//  Created by Benedetta Beatrice on 23/11/23.
//

import SwiftUI

struct LibraryView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            List {
                ForEach(LibraryModel.elements, id: \.title) { element in
                    NavigationLink(destination: ElementDetailView(element: element)) {
                        ElementRowView(element: element)
                            .accessibility(label: Text("\(element.title)"))
                    }
                    .accessibility(label: Text("Navigate to \(element.title) detail"))
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Library")
            .foregroundColor(.primary)
            
//            RecentlyUpdatedView()
//                .padding()
        }
    }
}

struct ElementRowView: View {
    let element: Element

    var body: some View {
        HStack {
            Image(systemName: element.imageName)
                .accessibility(label: Text("\(element.title) Image"))
            Text(element.title)
                .foregroundColor(.primary)
                .accessibility(label: Text("\(element.title)"))
        }
    }
}

struct ElementDetailView: View {
    let element: Element

    var body: some View {
        Text("Detail view for \(element.title)")
            .navigationTitle(element.title)
            .accessibility(label: Text("Detail view for \(element.title)"))
    }
}





#Preview {
    LibraryView()
}
