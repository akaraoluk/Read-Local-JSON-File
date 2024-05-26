//
//  CountryVM.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 24.05.2024.
//

import Foundation

class CountyVM {
    
    var listItems = [Country]()
    
    func configureList(complete: @escaping()->()) {
        JsonParser.shared.parse(type: MainData.self, resourceName: "MockData") { response in
            if let list = response.data?.countries {
                self.listItems = list
                complete()
            }
        } failure: { errorMessage in
            print("error: \(errorMessage)")
        }

    }
}
