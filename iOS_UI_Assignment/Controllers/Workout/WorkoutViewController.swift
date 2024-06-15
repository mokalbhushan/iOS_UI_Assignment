//
//  WorkoutViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class WorkoutViewController: UIViewController {

    static func loadFromNib() -> WorkoutViewController {
        return WorkoutViewController(nibName: "WorkoutViewController", bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesBackButton = true

    }

    @IBAction func endWorkoutButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
