//
//  MovieItemThumbnailView.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import SwiftUI
import Kingfisher

struct MovieItemThumbnailView: View {
    let image: String
    let newReleased = false
    
    var body: some View {
        ZStack {
            KFImage.url(URL(string: image))
                .resizable()
                .scaledToFit()
                .cornerRadius(4)
        }
    }
}

struct MovieItemThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemThumbnailView(
        image: "https://www.themoviedb.org/t/p/w1280/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg")
    }
}
