//
//  ClubVC.swift
//  Protocol
//
//  Created by Abdurrahman Karaoluk on 26.05.2024.
//

import UIKit

class ClubVC: UIViewController {
    
    @IBOutlet private weak var table: UITableView!
    
    var listItems = [Club]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        table.register(UINib(nibName: "\(ListCell.self)", bundle: nil), forCellReuseIdentifier: "\(ListCell.self)")
      //  viewModel.configureList()
    }
    
}

extension ClubVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(ListCell.self)") as! ListCell
        cell.configure(data: listItems[indexPath.row])
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let controller = storyboard?.instantiateViewController(withIdentifier: "ClubVC") as! ClubVC
//        controller.listItems = listItems[indexPath.row].clubs ?? []
//        navigationController?.show(controller, sender: nil)
//    }
}
