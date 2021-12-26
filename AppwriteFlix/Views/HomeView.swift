//
//  HomeView.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            MovieItemFeaturedView(image: "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg")
            VStack {
                MovieCollection(title: "Released in the Last Year")
                    .frame(height: 180)
                MovieCollection(title: "My List")
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
