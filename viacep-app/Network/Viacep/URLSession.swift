//
//  URLSession.swift
//  viacep-app
//
//  Created by Jackson Matheus on 17/02/24.
//

import Foundation


protocol URLSessionProtocol {
    func fetchData(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}

extension URLSession: URLSessionProtocol {
    func fetchData(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let dataTask = dataTask(with: request, completionHandler: completion)
        dataTask.resume()
    }
    
    
}
