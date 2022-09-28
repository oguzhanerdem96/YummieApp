//
//  OnboardingCollectionViewCell.swift
//  YummieApp
//
//  Created by Oğuzhan Erdem on 28.09.2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var slideImageView: UIImageView!
    
    @IBOutlet weak var slideTitleLbl: UILabel!
    @IBOutlet weak var sldieDescriptionLbl: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLbl.text = slide.title
        sldieDescriptionLbl.text = slide.description
    }
}
