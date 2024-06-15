//
//  WorkoutViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class WorkoutViewController: UIViewController {

    @IBOutlet var workOutCollectionView: UICollectionView!

    static func loadFromNib() -> WorkoutViewController {
        return WorkoutViewController(nibName: "WorkoutViewController", bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        navigationItem.hidesBackButton = true

    }

    // Setup UI
    func setupUI() {
        self.workOutCollectionView.dataSource = self
        self.workOutCollectionView.delegate = self
        self.workOutCollectionView.register(UINib(nibName: "WorkoutCell", bundle: nil), forCellWithReuseIdentifier: "WorkoutCell")
        self.workOutCollectionView.reloadData()
    }

    @IBAction func endWorkoutButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func nextButtonTapped(_ sender: Any) {
        let vc = AchievementViewController.loadFromNib()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
}

extension WorkoutViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkoutCell", for: indexPath) as? WorkoutCell else {return UICollectionViewCell()}
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }

}
