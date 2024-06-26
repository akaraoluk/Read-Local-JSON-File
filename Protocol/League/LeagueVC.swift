//
//  LeagueVC.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 25.05.2024.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet private weak var table: UITableView!
    
    var listItems = [League]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table.register(UINib(nibName: "\(ListCell.self)", bundle: nil), forCellReuseIdentifier: "\(ListCell.self)")
       // viewModel.configureList()
        
    }

}

extension LeagueVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(ListCell.self)") as! ListCell
        cell.configure(data: listItems[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ClubVC") as! ClubVC
        controller.listItems = listItems[indexPath.row].clubs ?? []
        navigationController?.show(controller, sender: nil)
    }
}
