//
//  ViacepProtocol.swift
//  viacep-app
//
//  Created by Jackson Matheus on 15/02/24.
//

import Foundation
import Alamofire


protocol ViacepRoute {
    func getAddress<T>(_ cep: String, completion: @escaping NetworkResult<T>)
}

class ViacepProtocol: ViacepRoute {
    
    private final let networkManager = NetworkManager()

    func getAddress<T>(_ cep: String, completion: @escaping NetworkResult<T>) {
        let url = "https://viacep.com.br/ws/\(cep)/json"
        
        let request = NetworkRequest(endpointURL: url, method: .get)
        
        self.networkManager.request(request){ (result: Result<T, Error>) in
                    completion(result)
                }
    }
    
    
}
