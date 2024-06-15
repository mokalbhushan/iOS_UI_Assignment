//
//  GoalViewCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class GoalViewCell: UITableViewCell {

    @IBOutlet var goalCollectionView: UICollectionView!

    var goalData: [TraveGoal] = [
        TraveGoal(name: "Travel to Japan", imageName: "japan", utilisedPurse: 890.20, totalPurse: 1900.00, remainingPurse: 1009.8),
        TraveGoal(name: "Travel to US", imageName: "US", utilisedPurse: 500.50, totalPurse: 700.00, remainingPurse: 199.50)
    ]

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }

    // Setup CollectionView
    func setupCollectionView() {
        self.goalCollectionView.dataSource = self
        self.goalCollectionView.delegate = self
        self.goalCollectionView.register(UINib(nibName: "GoalCollectionCell", bundle: nil), forCellWithReuseIdentifier: "GoalCollectionCell")
        self.goalCollectionView.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension GoalViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return goalData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GoalCollectionCell", for: indexPath) as? GoalCollectionCell else {return UICollectionViewCell()}
        cell.setUpData(data: goalData[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        // Manage collectionView Cell height and width
        let width = collectionView.bounds.width - 15
        return CGSize(width:width, height: 200)
    }

}
