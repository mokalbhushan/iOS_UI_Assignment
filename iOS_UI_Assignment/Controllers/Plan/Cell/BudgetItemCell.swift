//
//  BudgetItemCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class BudgetItemCell: UITableViewCell {

    @IBOutlet var cellImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        cellImageView.layer.cornerRadius = 10
    }
    
}
