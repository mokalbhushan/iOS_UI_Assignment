//
//  TopCollectionCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class TopCollectionCell: UICollectionViewCell {

    @IBOutlet var contentBackgroundView: UIView!

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        contentBackgroundView.layer.cornerRadius = 10
    }

    func setupData(data:TopViewData) {
        titleLabel.text = data.getTitle
        valueLabel.text = "$\(data.getAmount)"
    }
}
