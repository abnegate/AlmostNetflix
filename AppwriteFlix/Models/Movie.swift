//
//  Movie.swift
//  AppwriteFlix
//
//  Created by Damodar Lohani on 26/12/2021.
//

import Foundation

class Movie: Identifiable {
    public let id: String
    public let name: String
    public let durationMinutes: Int
    public let releaseYear: Int?
    public let ageRestriction: String
    public let thumbnailImageId: String
    public let description: String
    public let popularityIndex: Float?
    public let netflixReleaseDate: Int
    public let isOriginal: Bool
    
    
    init(
        id: String,
        name: String,
        durationMinutes: Int,
        releaseYear: Int?,
        ageRestriction: String,
        thumbnailImageId: String,
        description: String,
        popularityIndex: Float?,
        netflixReleaseDate: Int,
        isOriginal: Bool
    ) {
        self.id = id
        self.name = name
        self.durationMinutes = durationMinutes
        self.releaseYear = releaseYear
        self.ageRestriction = ageRestriction
        self.thumbnailImageId = thumbnailImageId
        self.description = description
        self.popularityIndex = popularityIndex
        self.netflixReleaseDate = netflixReleaseDate
        self.isOriginal = isOriginal
    }
    
    public static func from(map: [String: Any]) -> Movie {
        return Movie(
            id: map["$id"] as! String,
            name: map["name"] as! String,
            durationMinutes: map["durationMinutes"] as! Int,
            releaseYear: map["releaseYear"] as! Int?,
            ageRestriction: map["ageRestriction"] as! String,
            thumbnailImageId: map["thumbnailImageId"] as! String,
            description: map["description"] as! String,
            popularityIndex: map["popularityIndex"] as! Float?,
            netflixReleaseDate: map["netflixReleaseDate"] as! Int,
            isOriginal: map["isOriginal"] as! Bool
        )
    }
    
    public func toMap() -> [String: Any] {
        return [
            "name": name as Any,
            "durationMinutes": durationMinutes as Any,
            "releaseYear": releaseYear as Any,
            "ageRestriction": ageRestriction as Any,
            "thumbnailImageId": thumbnailImageId as Any,
            "description": description as Any,
            "popularityIndex": popularityIndex as Any,
            "netflixReleaseDate": netflixReleaseDate as Any,
            "isOriginal": isOriginal as Any
        ]
    }
}
