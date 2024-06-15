//
//  HomeViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
   
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }



    @IBAction func workOutButtonTapped(_ sender: Any) {
        let vc = WorkoutViewController.loadFromNib()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
