//
//  TopCollectionCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class TopCollectionCell: UICollectionViewCell {

    @IBOutlet var contentBackgroundView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        contentBackgroundView.layer.cornerRadius = 10
    }

}
