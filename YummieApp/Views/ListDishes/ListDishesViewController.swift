//
//  ListDishesViewController.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 29.09.2022.
//

import UIKit

class ListDishesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    static let identifier = "DishListTableViewCell"
    var category: DishCategory!
    var dishes: [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34),
        .init(id: "id2", name: "Indomie", description: "This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted ", image: "https://picsum.photos/100/200", calories: 334),
        .init(id: "id3", name: "Pizza", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 2134)
    
    
    
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCells()
    }
    private func registerCells(){
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
        
    }

    

}
extension ListDishesViewController: UITableViewDelegate  , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dishes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier ) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
