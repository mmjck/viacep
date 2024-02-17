//
//  NetworkError.swift
//  viacep-app
//
//  Created by Jackson Matheus on 17/02/24.
//

import Foundation


enum NetworkError: Error {
    case decodeError
    case noData
    case invalidURL
    case networkError
}



extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodeError:
            return "Error during data decoding"
        case .noData:
            return "Data error"
        case .invalidURL:
            return "Invalid URL"
        case .networkError:
            return "An error has occurred. Please verify your connection."
        }
    }
}
