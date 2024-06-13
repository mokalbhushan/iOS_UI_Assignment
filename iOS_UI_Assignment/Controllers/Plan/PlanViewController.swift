//
//  HomeViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 13/06/24.
//

import UIKit

class PlanViewController: UIViewController {

    static func loadFromNib() -> PlanViewController {
        return PlanViewController(nibName: "PlanViewController", bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}
