//
//  TopViewCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 14/06/24.
//

import UIKit

class TopViewCell: UITableViewCell {

    @IBOutlet var itemCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
    }

    // Setup Collection View
    func setupCollectionView() {
        self.itemCollectionView.delegate = self
        self.itemCollectionView.dataSource = self
        self.itemCollectionView.register(UINib(nibName: "TopCollectionCell", bundle: nil), forCellWithReuseIdentifier: "TopCollectionCell")
        self.itemCollectionView.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension TopViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopCollectionCell", for: indexPath) as? TopCollectionCell else { return UICollectionViewCell()}
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = (collectionView.bounds.width - 20) / 2
        return CGSize(width: width, height: 100)
    }


}
