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

    override func awakeFromNib() {
        super.awakeFromNib()
        cardContentView.layer.cornerRadius = 10
        imageView.layer.cornerRadius = 10
    }

}
