//
//  NetworkResult.swift
//  viacep-app
//
//  Created by Jackson Matheus on 17/02/24.
//

import Foundation

typealias NetworkResult<T: Decodable> = ((Result<T, Error>) -> Void)
