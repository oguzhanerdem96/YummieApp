//
//  OnboardingViewController.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 28.09.2022.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var colletionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
    }
    


}
