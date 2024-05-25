//
//  ListCell.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 24.05.2024.
//

import UIKit

protocol ListCellProtocol {
    var iconName: String { get }
    var titleText: String { get }
}

class ListCell: UITableViewCell {

    @IBOutlet private weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(data: ListCellProtocol) {
        titleLabel.text = data.titleText
        iconImage.image = UIImage(named: data.iconName)
    }
    
}
