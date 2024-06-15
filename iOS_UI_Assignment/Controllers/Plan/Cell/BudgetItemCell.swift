//
//  BudgetItemCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class BudgetItemCell: UITableViewCell {

    @IBOutlet var cellImageView: UIImageView!
    @IBOutlet var titleName: UILabel!
    @IBOutlet var purseLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // Data binding with UI element
    func setupData(data:BudgetData) {
        titleName.text = data.getName
        cellImageView.image = UIImage(named: data.getImageString)
        purseLabel.text = "$\(data.getLeftPurse) left"
        cellImageView.backgroundColor = UIColor(hexString: data.getColor)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        cellImageView.layer.cornerRadius = 10
    }
    
}
