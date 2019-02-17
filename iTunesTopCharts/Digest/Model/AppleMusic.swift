//
//  AppleMusic.swift
//  iTunesTopCharts
//
//  Created by NiKhil AroRa on 14/01/19.
//  Copyright © 2019 Nikhil Arora. All rights reserved.
//

import Foundation
import SwiftyJSON

struct AppleMusic {
    var artistName: String!
    var id: String!
    var releaseDate: String!
    var name: String!
    var collectionName: String!
    var kind: String!
    var copyright: String!
    var artistId: String
    var contentAdvisoryRating: String!
    var artistUrl: String!
    var artworkUrl100: String!
    var url: String!
    var genres: [Genres] = []
    
    
    
    init(_ json: JSON) {
        self.artistName = json["artistName"].stringValue
        self.id = json["id"].stringValue
        self.releaseDate = json["releaseDate"].stringValue
        self.name = json["name"].stringValue
        self.collectionName = json["collectionName"].stringValue
        self.kind = json["kind"].stringValue
        self.copyright = json["copyright"].stringValue
        self.artistId = json["artistId"].stringValue
        self.contentAdvisoryRating = json["contentAdvisoryRating"].stringValue
        self.artistUrl = json["artistUrl"].stringValue
        self.artworkUrl100 = json["artworkUrl100"].stringValue
        self.url = json["url"].stringValue
        let genresArray = json["genres"].arrayValue
        for genre in genresArray {
            let tempGenre = Genres(genre)
            self.genres.append(tempGenre)
        }
    }
}


struct Genres {
    var genreId: String!
    var name: String!
    var url: String!
    
    init(_ json: JSON) {
        self.genreId = json["genreId"].stringValue
        self.name = json["name"].stringValue
        self.url = json["url"].stringValue
    }
}
