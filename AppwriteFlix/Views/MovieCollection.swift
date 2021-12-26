//
//  MovieCollection.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import SwiftUI

struct MovieCollection: View {
    let title: String
    let itemHeight: CGFloat?
    let itemWidth: CGFloat?
    let frameHeight: CGFloat?
    
    init(title: String, frameHeight: CGFloat? = nil, itemWidth: CGFloat? = nil, itemHeight: CGFloat? = nil) {
        self.title = title
        self.frameHeight = frameHeight
        self.itemWidth = itemWidth
        self.itemHeight = itemHeight
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(title)
                .font(.headline)
            ScrollView(Axis.Set.horizontal) {
                HStack {
                    MovieItemThumbnailView(image: "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg")
                        .frame(width: itemWidth, height: itemHeight)
                    MovieItemThumbnailView(image: "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg")
                        .frame(width: itemWidth, height: itemHeight)
                    MovieItemThumbnailView(image: "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg")
                        .frame(width: itemWidth, height: itemHeight)
                    MovieItemThumbnailView(image: "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg")
                        .frame(width: itemWidth, height: itemHeight)
                }
                .frame(height: frameHeight)
            }
        }
    }
}

struct MovieCollection_Previews: PreviewProvider {
    static var previews: some View {
        MovieCollection(title: "Movies", 
            itemWidth: 100, itemHeight: 200)
    }
}
