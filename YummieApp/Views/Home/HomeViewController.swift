//
//  HomeViewController.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 28.09.2022.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var speacialCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Africa Dish",  image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Africa Dish2", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "Africa Dish3", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "Africa Dish4", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Africa Dish5", image: "https://picsum.photos/100/200")
        
    ]
    var populars: [Dish] = [
        .init(id: "id1", name: "Garri", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 34),
        .init(id: "id2", name: "Indomie", description: "This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted This is the best I have ever tastedThis is the best I have ever tasted ", image: "https://picsum.photos/100/200", calories: 334),
        .init(id: "id3", name: "Pizza", description: "This is the best I have ever tasted", image: "https://picsum.photos/100/200", calories: 2134)
    
    
    ]
    
    var specials: [Dish] = [
        .init(id: "id1", name: "Friend Plantain", description: "This is my favourite dish", image: "https://picsum.photos/100/200", calories: 314),
        .init(id: "id1", name: "Beans and Garri", description: "This is my best i have ever tasted", image: "https://picsum.photos/100/200", calories: 1004)
        
    
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        speacialCollectionView.dataSource = self
        speacialCollectionView.delegate = self
        title = "Yummie "
        registerCell()
    }
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
            popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        speacialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
    }

   

}

extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return populars.count
        case speacialCollectionView:
            return specials.count
        default: return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
        case speacialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as!
            DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            return cell
        default: return UICollectionViewCell()
     
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            
        }else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
    }
}
    }
