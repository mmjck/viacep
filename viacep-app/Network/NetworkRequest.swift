//
//  NetworkRequest.swift
//  viacep-app
//
//  Created by Jackson Matheus on 17/02/24.
//

import Foundation

struct NetworkRequest {
    var endpointURL: String
    var method: HTTPMethod
}


enum HTTPMethod: String {
    case get
    case post
    case put
    case patch
    case delete
}
