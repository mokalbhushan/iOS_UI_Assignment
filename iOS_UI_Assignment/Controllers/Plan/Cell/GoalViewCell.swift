//
//  GoalViewCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class GoalViewCell: UITableViewCell {

    @IBOutlet var goalCollectionView: UICollectionView!

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
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GoalCollectionCell", for: indexPath) as? GoalCollectionCell else {return UICollectionViewCell()}
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        // Manage collectionView Cell height and width
        let width = collectionView.bounds.width - 15
        return CGSize(width:width, height: 200)
    }

}
