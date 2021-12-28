//
//  MovieCollection.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import SwiftUI

struct MovieCollection: View {
    let movies: [Movie]
    let title: String
    let itemHeight: CGFloat?
    let itemWidth: CGFloat?
    let frameHeight: CGFloat?
    
    init(title: String, movies: [Movie], frameHeight: CGFloat? = nil, itemWidth: CGFloat? = nil, itemHeight: CGFloat? = nil) {
        self.title = title
        self.frameHeight = frameHeight
        self.itemWidth = itemWidth
        self.itemHeight = itemHeight
        self.movies = movies
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(title)
                .font(.headline)
            ScrollView(Axis.Set.horizontal) {
                HStack {
                    ForEach(movies) { movie in
                        MovieItemThumbnailView(image: "https://dbqa.appwrite.org/v1/storage/files/" + movie.thumbnailImageId + "/preview?project=netflix&width=480&height=640")
                            .frame(width: itemWidth, height: itemHeight)
                    }
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
        MovieCollection(title: "Movies", movies: [],
            itemWidth: 100, itemHeight: 200)
    }
}
