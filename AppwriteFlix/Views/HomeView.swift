//
//  HomeView.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var moviesVM: MoviesVM = MoviesVM.shared
    
    var body: some View {
        ScrollView {
            if(moviesVM.catMovies["featured"] != nil) {
                MovieItemFeaturedView(image: "https://dbqa.appwrite.org/v1/storage/files/" + ((moviesVM.catMovies["featured"] ?? []).first!).thumbnailImageId + "/preview?project=netflix&width=480&height=640" )
            } else if(!((moviesVM.catMovies["movies"] ?? []).isEmpty)) {
                MovieItemFeaturedView(image: "https://dbqa.appwrite.org/v1/storage/files/" + ((moviesVM.catMovies["movies"]!).first!).thumbnailImageId + "/preview?project=netflix&width=480&height=640" )
            }
            VStack {
                ForEach(appwriteCategories) { category in
                    MovieCollection(title: category.title, movies: moviesVM.catMovies[category.id] ?? [])
                        .frame(height: 180)
                }
                MovieCollection(title: "My List", movies: moviesVM.catMovies["movies"] ?? [])
                    .frame(height: 270)
            }.padding()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
