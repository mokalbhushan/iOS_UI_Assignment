//
//  HotelViewCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class HotelViewCell: UITableViewCell {

    @IBOutlet var hotelImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        hotelImageView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
