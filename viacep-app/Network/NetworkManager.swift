//
//  NetworkManager.swift
//  viacep-app
//
//  Created by Jackson Matheus on 17/02/24.
//

import Foundation

protocol NetworkManagerProtocol {
    func request<T: Decodable>(_ request: NetworkRequest, completion: @escaping NetworkResult<T>)
}


class NetworkManager: NetworkManagerProtocol {
    private let urlSession: URLSessionProtocol
    
    init(urlSession: URLSessionProtocol = URLSession.shared){
        self.urlSession = urlSession
    }
    
    
    func request<T>(_ request: NetworkRequest, completion: @escaping NetworkResult<T>) where T : Decodable {
        guard let url = URL(string: request.endpointURL) else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue.uppercased()
        
        urlSession.fetchData(with: urlRequest) {
            data, response, error in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(.success(result))
            }catch {
                completion(.failure(NetworkError.decodeError))
            }
        }
        
        
    }
}
