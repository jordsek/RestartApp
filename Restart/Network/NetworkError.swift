//
//  NetworkError.swift
//  Restart
//
//  Created by Jordan Isac on 09/10/2023.
//

import Foundation

enum NetworkError: Error{
    case parsingError
    case dataNotFound
    case InvalidURI
}

extension NetworkError: LocalizedError{
    var errorDescription: String? {
        switch self {
        case .parsingError:
            return NSLocalizedString("Invalid URL", comment: "InvalidURL")
        case .dataNotFound:
            return NSLocalizedString("dataNotFound", comment: "data Not Found")
        case .InvalidURI:
            return NSLocalizedString("parsingError", comment: "parsing Error")
        }
    }
}
