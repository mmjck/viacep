//
//  AddressTableViewCell.swift
//  viacep-app
//
//  Created by Jackson Matheus on 17/02/24.
//

import Foundation
import UIKit

class AddressTableViewCell: UITableViewCell {
    static let identifier: String = "AddressTableViewCell"
    
    private lazy var cepLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var streetLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI(){
        self.contentView.addSubview(cepLabel)
        self.contentView.addSubview(streetLabel)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            cepLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            cepLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            cepLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            cepLabel.widthAnchor.constraint(equalToConstant: 100),
            
            streetLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            streetLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            streetLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            streetLabel.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, multiplier: 0.245)
        ])
    }
    
    
    func config(_ address: Address){
        self.cepLabel.text = address.cep
        self.streetLabel.text = address.street
    }
}
