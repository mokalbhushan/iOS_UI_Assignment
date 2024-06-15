//
//  WorkoutViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class WorkoutViewController: UIViewController {

    @IBOutlet var workOutCollectionView: UICollectionView!

    @IBOutlet var playButton: UIButton!
    @IBOutlet var workoutConuntLabel: UILabel!
    @IBOutlet var pageControl: UIPageControl!

    @IBOutlet var endWorkoutButton: UIButton!
    @IBOutlet var nextButton: UIButton!

    static func loadFromNib() -> WorkoutViewController {
        return WorkoutViewController(nibName: "WorkoutViewController", bundle: nil)
    }

    private var numberOfWorkoutScreen: Int = 4

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        pageControl.numberOfPages = numberOfWorkoutScreen
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        navigationItem.hidesBackButton = true

    }

    // Setup UI
    func setupUI() {
        setupWorkoutCountLabel()
        self.playButton.layer.cornerRadius = playButton.bounds.width / 2
        self.endWorkoutButton.layer.cornerRadius = 10
        self.nextButton.layer.cornerRadius = 10
        self.workOutCollectionView.dataSource = self
        self.workOutCollectionView.delegate = self
        self.workOutCollectionView.register(UINib(nibName: "WorkoutCell", bundle: nil), forCellWithReuseIdentifier: "WorkoutCell")
        self.workOutCollectionView.reloadData()
    }

    // Set the attributed string to the label
    func setupWorkoutCountLabel() {
        let text = "15/32"
        let attributedString = NSMutableAttributedString(string: text)
        if let slashRange = text.range(of: "/") {
            let nsRange = NSRange(slashRange, in: text)
            let start = nsRange.location
            let length = text.count - start
            let range = NSRange(location: start, length: length)
            attributedString.addAttribute(.foregroundColor, value: UIColor.lightGray, range: range)
        }
        workoutConuntLabel.attributedText = attributedString
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
        return numberOfWorkoutScreen
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkoutCell", for: indexPath) as? WorkoutCell else {return UICollectionViewCell()}
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pageControl.currentPage = indexPath.row
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }

}
