//
//  LeagueVC.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 25.05.2024.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet private weak var table: UITableView!

    let viewModel = LeagueVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table.register(UINib(nibName: "\(ListCell.self)", bundle: nil), forCellReuseIdentifier: "\(ListCell.self)")
        viewModel.configureList()
        
    }
    



}

extension LeagueVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(ListCell.self)") as! ListCell
        cell.configure(data: viewModel.listItems[indexPath.row])
        return cell
    }
    
    
}
