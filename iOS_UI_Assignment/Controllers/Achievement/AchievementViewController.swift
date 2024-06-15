//
//  AchievementViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 14/06/24.
//

import UIKit

class AchievementViewController: UIViewController {

    static func loadFromNib() -> AchievementViewController {
        return AchievementViewController(nibName: "AchievementViewController", bundle: nil)
    }

// MARK: UI Outlets

    @IBOutlet var vRImageView: UIImageView!
    @IBOutlet var tickMarkImageView: UIImageView!
    @IBOutlet var faceBookButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    // MARK: UI setup
    func setupUI() {
        tickMarkImageView.layer.cornerRadius = self.tickMarkImageView.bounds.width / 2
        vRImageView.layer.cornerRadius = 10
        faceBookButton.layer.cornerRadius = 10
    }

    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }

}
