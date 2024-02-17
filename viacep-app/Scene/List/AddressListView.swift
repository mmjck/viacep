//
//  AddressListView.swift
//  viacep-app
//
//  Created by Jackson Matheus on 16/02/24.
//

import Foundation
import UIKit

class AddressListView {
    //MARK: Properties
    lazy var rootView: UIView = UIView()
    lazy var searchButton: UIButton = UIButton()
    
    lazy var tableView: UITableView  = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    func build(_ viewController: UIViewController) -> UIView {
        self.buildRootView(viewController)
        
        return self.rootView
    }
    
    
}

private extension AddressListView {
    func buildRootView(_ viewController: UIViewController){
        self.rootView.backgroundColor = .white
        self.buildSearchButton(viewController.navigationItem)
    }
    
    private func buildSearchButton(_ navigationItem: UINavigationItem) {
        let button = UIBarButtonItem()
        
        self.searchButton.setTitle("Search", for: .normal)
        self.searchButton.setTitleColor(.blue, for: .normal)
        
        button.customView = self.searchButton
        navigationItem.rightBarButtonItem = button
    }
    
    
    func buildTableView(){
        self.tableView.separatorStyle = .none
        self.rootView.addSubview(self.tableView)
        buildTableViewConstraints()
    }
    
    
    func buildTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: rootView.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: rootView.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: rootView.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: rootView.bottomAnchor, constant: 0),
        ])
    }
}
