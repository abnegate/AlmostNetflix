//
//  Movie.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import Foundation

class Movie {
    public let id: String
    public let title: String
    public let image: String
    
    init(
        id: String,
        title: String,
        image: String
    ) {
        self.id = id
        self.title = title
        self.image = image
    }
    
    public static func from(map: [String: Any]) -> Movie {
        return Movie(
            id: map["$id"] as! String,
            title: map["title"] as! String,
            image: map["image"] as! String
        )
    }
    
    public func toMap() -> [String: Any] {
        return [
            "title": title as Any,
            "image": image as Any,
        ]
    }
}
