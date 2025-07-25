//
//  TMDbError+TMDbAPIError.swift
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

extension TMDbError {

    init(error: some Error) {
        guard let apiError = error as? TMDbAPIError else {
            self = .unknown(error)
            return
        }

        switch apiError {
        case .notFound:
            self = .notFound

        case .unauthorised(let message):
            self = .unauthorised(message)

        case .network(let error):
            self = .network(error)

        default:
            self = .unknown(error)
        }
    }

}
