//
//  ListOrdersViewController.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 30.09.2022.
//

import UIKit

class ListOrdersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var orders: [Order] = [
        .init(id: "id", name: "Emanuel Okwara", dish: .init(id: "id1", name: "Garry", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id", name: "Kral Okwara", dish: .init(id: "id1", name: "Hi Guys", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id", name: "Cemil Okwara", dish: .init(id: "id1", name: "Whatt", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
        .init(id: "id", name: "Oğuz Okwara", dish: .init(id: "id1", name: "Deneme", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34)),
             
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orders"
        registerCells()
    }
    

    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }

}
    
extension ListOrdersViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
}
