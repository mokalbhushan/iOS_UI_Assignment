//
//  HomeViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var navigationButtons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        setupUI()
    }
   
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }

    func setupUI(){
        navigationButtons.forEach { button in
            button.layer.cornerRadius = 10

        }
    }

    @IBAction func workOutButtonTapped(_ sender: Any) {
        let vc = WorkoutViewController.loadFromNib()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func searchHotelButtonTapped(_ sender: Any) {
        let vc = MapViewController.loadFromNib()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
