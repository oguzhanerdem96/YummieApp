//
//  DishDetailViewController.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 29.09.2022.
//

import UIKit

class DishDetailViewController: UIViewController {
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    var dish: Dish!
    override func viewDidLoad() {
        super.viewDidLoad()
        papulateView()
    }
    
    private func papulateView(){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }
    @IBAction func placeOrderBtnClicked(_ sender: Any) {
    }
    

   

}
