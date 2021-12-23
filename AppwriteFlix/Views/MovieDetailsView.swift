//
//  MovieDetailsView.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 23/12/2021.
//

import SwiftUI

struct MovieDetailsView: View {
    var body: some View {
        VStack {
            Button("Play") {
                
            }
            .foregroundColor(.black)
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(8)
            Button("Download") {
                
            }
            .foregroundColor(.black)
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(8)
            
            Text("Christmas brings the ultimate gift to royal baby. But first Queen Amber must save her family and kingdom.")
                .foregroundColor(.white)
                .padding(.top)
            
            Spacer()
        }
        .padding()
        .background(Color.black)
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView()
    }
}
