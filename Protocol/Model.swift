//
//  Model.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 24.05.2024.
//

import Foundation

struct MainData: Codable {
    let data: MainDataCountry?
}

struct MainDataCountry: Codable {
    let countries: [Country]?
}

struct Country: Codable, ListCellProtocol {
    let countryName: String?
    let flagUrl: String?
    let leagues: [League]?
    
    var iconName: String {
        flagUrl ?? ""
    }
    
    var titleText: String {
        countryName ?? ""
    }
    
}

struct League: Codable, ListCellProtocol {
    let leagueName: String?
    let leagueLogo: String?
    let clubs: [Club]?
    
    var iconName: String {
        leagueLogo ?? ""
    }
    
    var titleText: String {
        leagueName ?? ""
    }
}

struct Club: Codable, ListCellProtocol {
    let clubName: String?
    let clubLogo: String?
    
    var iconName: String {
        clubLogo ?? ""
    }
    
    var titleText: String {
        clubName ?? ""
    }
}
