//
//  LeagueVM.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 25.05.2024.
//

import Foundation

class LeagueVM {
    
    var listItems = [League]()
    
    func configureList() {
        listItems = [League(name: "Premier League", logo: "league1"),
                     League(name: "FA Cup", logo: "league2"),
                     League(name: "Championship", logo: "league3")]
    }
}
