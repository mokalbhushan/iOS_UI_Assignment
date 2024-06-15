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
    
    @IBOutlet var hotelListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }

    func setupUI(){
        dismissButton.layer.cornerRadius = 5
        self.hotelListTableView.register(UINib(nibName: "HotelViewCell", bundle: nil), forCellReuseIdentifier: "HotelViewCell")
        self.hotelListTableView.reloadData()

    }

    @IBAction func dismissButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

extension HotelsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HotelViewCell", for: indexPath) as? HotelViewCell else {return UITableViewCell()}
        return cell
    }

}
