//
//  GoalCollectionCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class GoalCollectionCell: UICollectionViewCell {

    @IBOutlet var cardContentView: UIImageView!

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
   
    @IBOutlet var utilisedPurseLabel: UILabel!

    @IBOutlet var totalPurse: UILabel!
    @IBOutlet var remainingPurse: UILabel!
    @IBOutlet var progress: UIProgressView!

    override func awakeFromNib() {
        super.awakeFromNib()
        cardContentView.layer.cornerRadius = 10
        imageView.layer.cornerRadius = 10
    }

    func setUpData(data:TraveGoal) {
        titleLabel.text = data.getName
        remainingPurse.text = "$\(data.getRemainingPurse) left"
        totalPurse.text = "of $\(data.getTotalPurse)"
        utilisedPurseLabel.text = "$\(data.getUtilizedPurse)"
        imageView.image = UIImage(named: data.getImageName)
        progress.progress = Float(data.getRemainingPurse / data.getTotalPurse)
    }

}
