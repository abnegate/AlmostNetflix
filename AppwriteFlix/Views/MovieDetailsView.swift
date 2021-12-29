//
//  MovieDetailsView.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 23/12/2021.
//

import SwiftUI
import Kingfisher

struct MovieDetailsView: View {
    let movie: Movie
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                KFImage.url(URL(string: movie.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(movie.name)
                        .font(.title)

                
                
                    HStack {
                        Text(movie.releaseYear())
                        Text(movie.ageRestriction)
                        Text(movie.duration())
                    }
                    
                    Text(movie.description)

                    Text("Starring: \(movie.cast)")

                }.padding()
                
                HStack {
                    Button {
                        
                    } label: {
                        VStack {
                            Image(systemName: "plus")
                            Text("My List")
                        }
                        .padding()
                    }
                    .foregroundColor(.white)
                    .cornerRadius(4)
                }
                .padding(.horizontal)

            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: Movie(id: "1", name: "Spider Man", durationMinutes: 200, releaseDate: 2000, ageRestriction: "R", thumbnailImageId: "test", description: "Awesome movie", popularityIndex: 12, netflixReleaseDate: 12334, isOriginal: true,
                                      tags: "", genres: "", cast: ""))
    }
}
