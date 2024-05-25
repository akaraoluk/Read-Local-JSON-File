//
//  Model.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 24.05.2024.
//

import Foundation

struct Country: ListCellProtocol {
    let name: String
    let flag: String
    
    var iconName: String {
        flag
    }
    
    var titleText: String {
        name
    }
    
}

struct League: ListCellProtocol {
    let name: String
    let logo: String
    
    var iconName: String {
        logo
    }
    
    var titleText: String {
        name
    }
}

struct Club {
    let clubName: String
    let clubLogo: String
}
