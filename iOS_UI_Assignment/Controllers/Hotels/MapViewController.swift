//
//  MapViewController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class MapViewController: UIViewController {
    static func loadFromNib() -> MapViewController {
        return MapViewController(nibName: "MapViewController", bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackButton()
    }

    // MARK: Create custom backbutton
    func setupBackButton() {

        let backButton = UIButton(type: .system)
        backButton.frame = CGRect(x: 0, y: 0, width: 70, height: 35)
        backButton.setTitle("Back", for: .normal)
        let backImage = UIImage(systemName: "chevron.left")
        backButton.setImage(backImage, for: .normal)
        backButton.layer.cornerRadius = 20
        backButton.backgroundColor = .white

        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)

        let backBarButtonItem = UIBarButtonItem(customView: backButton)
        self.navigationItem.leftBarButtonItem = backBarButtonItem
            }

    @objc private func backButtonTapped() {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func viewHotelButtonTapped(_ sender: Any) {
        let vc = HotelsViewController.loadFromNib()
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
}
