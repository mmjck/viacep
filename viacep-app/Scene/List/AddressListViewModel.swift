//
//  AddressListViewModel.swift
//  viacep-app
//
//  Created by Jackson Matheus on 16/02/24.
//

import Foundation
class AddressListViewModel {
    var listAddress: [Address] = []
    
    func putAddress(_ address: Address) {
        if !self.listAddress.contains(where: { $0.cep == address.cep }) {
            self.listAddress.append(address)
        }
    }
}
