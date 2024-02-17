//
//  AddressListViewController.swift
//  viacep-app
//
//  Created by Jackson Matheus on 16/02/24.
//

import Foundation
import UIKit


class AddressListViewController: UIViewController {
    
    
    private let viewModel = AddressListViewModel()
    private let addressListView = AddressListView()
    
    override func loadView() {
        self.view = self.addressListView.build(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.addressListView.tableView.delegate = self
        self.addressListView.tableView.dataSource = self
        
        self.addressListView.tableView.register(AddressTableViewCell.self, forCellReuseIdentifier: AddressTableViewCell.identifier)
        
        
        self.addressListView.searchButton.addTarget(self, action: #selector(didPressSearch(_:)), for: UIControl.Event.touchUpInside)
    }
    
    @objc func didPressSearch(_ sender: Any) {
//        navigate(self, SearchAddressViewController()) { viewController in
//            viewController.delegate = self
//        }
    }
    
    
}


extension AddressListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.listAddress.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: AddressTableViewCell.identifier, for: indexPath) as? AddressTableViewCell else {
            return UITableViewCell()
        }
        cell.config(self.viewModel.listAddress[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 56
    }
    
}
