//
//  MoviesVM.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 27/12/2021.
//

import Foundation
import SwiftUI

class MoviesVM: ObservableObject {
    @Published var featured: Movie?
    @Published var movies: [String:[Movie]] = [:]
    static let shared = MoviesVM()
    
    init() {
        getMovies()
        getFeatured()
    }
    
    private func getFeatured() {
        AppwriteService.shared.database.listDocuments(
            collectionId: "movies",
            limit: 1,
            orderAttributes: ["trendingIndex"],
            orderTypes: ["DESC"]
        ) { result in
            DispatchQueue.main.async {
                switch result {
                case .failure(let err):
                    print(err.message)
                case .success(let docs):
                    self.featured = docs.convertTo(fromJson: Movie.from).first
                    
                }
                
            }
        }
    }
    
    private func getMovies() {
        appwriteCategories.forEach {category in
            
            AppwriteService.shared.database.listDocuments(collectionId: "movies", queries: category.queries, orderAttributes: category.orderAttributes, orderTypes: category.orderTypes) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .failure(let err):
                        print(err.message)
                    case .success(let docs):
                        self.movies[category.id] = docs.convertTo(fromJson: Movie.from)
                        //                    self.movies = docs.convertTo(fromJson: Movie.from)
                        
                    }
                    
                }
            }
        }
    }
}
