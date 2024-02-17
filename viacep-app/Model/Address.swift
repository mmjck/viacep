//
//  Address.swift
//  viacep-app
//
//  Created by Jackson Matheus on 15/02/24.
//

import Foundation


struct Address: Decodable {
    let cep: String?
    let street: String
    let complement: String?
    let neighborhood: String?
    let locality: String?
    let uf: String?
    let unity: String?
    let ibge: String?
    let gia: String?
    
    enum CodingKeys: String, CodingKey {
        case street = "logradouro"
        case complement = "complemento"
        case neighborhood = "bairro"
        case locality = "localidade"
        case unity = "unidade"
        case gia
        case cep
        case uf
        case ibge
        
    }
    
}
