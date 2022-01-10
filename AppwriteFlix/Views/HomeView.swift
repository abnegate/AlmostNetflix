//
//  HomeView.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var moviesVM: MoviesVM
    @EnvironmentObject var authVM: AuthVM
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.black).ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                        if(moviesVM.featured != nil) {
                            MovieItemFeaturedView(movie:  moviesVM.featured!, isInWatchlist: moviesVM.watchList.contains(moviesVM.featured!.id) , onTapMyList: {
                                self.onTapMyList(moviesVM.featured!.id)
                            })
                        } else if(!((moviesVM.movies["movies"] ?? []).isEmpty)) {
                            let movie = (moviesVM.movies["movies"]!).first!
                            MovieItemFeaturedView(movie: movie, isInWatchlist: moviesVM.watchList.contains(movie.id), onTapMyList: { self.onTapMyList(movie.id)})
                        }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(appwriteCategories) { category in
                            MovieCollection(title: category.title, movies: moviesVM.movies[category.id] ?? [])
                                .frame(height: 180)
                        }
                    }.padding(.horizontal)
                }
            }.ignoresSafeArea(.all, edges: .top)
            
            .foregroundColor(.white)
            .navigationTitle("")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    NavigationLink(destination: WatchlistView()) {
                        Text("My List")
                    }
                    .foregroundColor(.white)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationViewStyle(.stack)
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.red),]
            appearance.titleTextAttributes = [.foregroundColor: UIColor(Color.red),]
            appearance.titlePositionAdjustment = UIOffset.zero
            let standardAppearance = UINavigationBarAppearance()
            standardAppearance.configureWithTransparentBackground()
            UINavigationBar.appearance().scrollEdgeAppearance = standardAppearance
            UINavigationBar.appearance().standardAppearance = appearance
        }
        

        

    }
    
    func onTapMyList(_ movieId: String) -> Void {
        moviesVM.addToMyList(movieId)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
