//
//  CastMember.swift
//  TMDb
//
//  Copyright © 2024 Adam Young.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an AS IS BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

///
/// A model representing a cast member.
///
public struct CastMember: Identifiable, Codable, Equatable, Hashable, Sendable {

    ///
    /// Cast member's identifier.
    ///
    public let id: Int

    ///
    /// Cast member's identifier for the particular movie or TV series.
    ///
    public let castID: Int?

    ///
    /// Credit identifier for that particular movie or TV series.
    ///
    public let creditID: String

    ///
    /// Cast member's real name.
    ///
    public let name: String

    ///
    /// Cast member's character name.
    ///
    public let character: String

    ///
    /// Cast member's gender.
    ///
    public let gender: Gender?

    ///
    /// Cast member's profile image.
    ///
    /// To generate a full URL see <doc:/TMDb/GeneratingImageURLs>.
    ///
    public let profilePath: URL?
    
    ///
    /// Cast member's popularity score
    ///
    public let popularity: Double?

    ///
    /// Order number in the cast list.
    ///
    public let order: Int

    ///
    /// Creates a cast member object.
    ///
    /// - Parameters:
    ///    - id: Cast member's identifier.
    ///    - castID: Cast member's identifier for the particular movie or TV series.
    ///    - creditID: Credit identifier for that particular movie or TV series.
    ///    - name: Cast member's name.
    ///    - character: Cast member's character name.
    ///    - gender: Cast member's gender.
    ///    - profilePath: Cast member's profile image.
    ///    - popularity: Cast member's popularity score.
    ///    - order: Order number in the cast list.
    ///
    public init(
        id: Int,
        castID: Int? = nil,
        creditID: String,
        name: String,
        character: String,
        gender: Gender? = nil,
        profilePath: URL? = nil,
        popularity: Double? = nil,
        order: Int
    ) {
        self.id = id
        self.castID = castID
        self.creditID = creditID
        self.name = name
        self.character = character
        self.gender = gender
        self.profilePath = profilePath
        self.popularity = popularity
        self.order = order
    }

}

extension CastMember {

    private enum CodingKeys: String, CodingKey {
        case id
        case castID = "castId"
        case creditID = "creditId"
        case name
        case character
        case gender
        case profilePath
        case popularity
        case order
    }

}
