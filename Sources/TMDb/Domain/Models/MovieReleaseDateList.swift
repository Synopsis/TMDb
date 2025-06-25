//
//  MovieReleaseDateListItem.swift
//  TMDb
//
//  Created by Damian Stewart on 25.06.2025.
//

import Foundation

public struct MovieReleaseDatesList: Codable, Sendable {
    public let id: Int
    public let results: [MovieCountryReleaseDatesWrapperDict]
}


public struct MovieCountryReleaseDatesWrapperDict: Codable, Sendable {
    /**
     [
         {
           "iso_3166_1": "BG",
           "release_dates": [
             {
               "certification": "c",
               "descriptors": [],
               "iso_639_1": "",
               "note": "",
               "release_date": "2012-08-28T00:00:00.000Z",
               "type": 3
             }
           ]
         },
     */
    
    private enum CodingKeys: String, CodingKey {
        case countryCode = "iso31661"
        case releaseDates
    }
    
    public let countryCode: String
    public let releaseDates: [MovieCountryReleaseDateListItem]
}

public struct MovieCountryReleaseDateListItem: Codable, Sendable {
    
    private enum CodingKeys: String, CodingKey {
        case certification
        case descriptors
        case languageCode = "iso6391"
        case note
        case releaseDate
        case type
    }
    
    public let certification: String
    public let descriptors: [String]
    public let languageCode: String
    public let note: String
    public let releaseDate: String
    public let type: Int
}

