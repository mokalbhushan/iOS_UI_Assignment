//
//  HotelsViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class HotelsViewController: UIViewController {

    static func loadFromNib() -> HotelsViewController {
        return HotelsViewController(nibName: "HotelsViewController", bundle: nil)
    }

    @IBOutlet var dismissButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }

    func setupUI(){
        dismissButton.layer.cornerRadius = 5

    }

    @IBAction func dismissButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
