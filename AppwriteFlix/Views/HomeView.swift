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
        NavigationView {
            ZStack {
                Color(.black).ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                    if(moviesVM.featured != nil) {
                        MovieItemFeaturedView(movie:  moviesVM.featured! )
                    } else if(!((moviesVM.movies["movies"] ?? []).isEmpty)) {
                        MovieItemFeaturedView(movie: (moviesVM.movies["movies"]!).first!)
                    }
                    VStack {
                        ForEach(appwriteCategories) { category in
                            MovieCollection(title: category.title, movies: moviesVM.movies[category.id] ?? [])
                                .frame(height: 180)
                        }
                    }.padding()
                }
            }
            .foregroundColor(.white)
        }

        

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
