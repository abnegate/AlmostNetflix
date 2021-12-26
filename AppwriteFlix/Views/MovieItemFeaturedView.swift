//
//  MovieItemFeaturedView.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import SwiftUI
import Kingfisher

struct MovieItemFeaturedView: View {
    let image: String
    
    var body: some View {
        ZStack {
            KFImage.url(URL(string: image))
                .resizable()
                .scaledToFit()
        }
    }
}

struct MovieItemFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemFeaturedView(image: "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg")
    }
}
