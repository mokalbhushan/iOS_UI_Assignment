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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    @IBAction func closeButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
