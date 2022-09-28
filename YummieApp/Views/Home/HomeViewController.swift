//
//  HomeViewController.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 28.09.2022.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish",  image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Africa Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "Africa Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "Africa Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Africa Dish5", image: "https://picsum.photos/100/200")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Yummie "
        registerCell()
    }
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
    }

   

}

extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}
