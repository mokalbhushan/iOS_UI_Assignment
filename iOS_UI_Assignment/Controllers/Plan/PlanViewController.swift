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

    @IBOutlet var planTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // hide navigation bar for custom NavigationView
        self.navigationController?.navigationBar.isHidden = true
    }

    func setupUI(){
        self.planTableView.register(UINib(nibName: "TopViewCell", bundle: nil), forCellReuseIdentifier: "TopViewCell")
        self.planTableView.register(UINib(nibName: "GoalViewCell", bundle: nil), forCellReuseIdentifier: "GoalViewCell")
        self.planTableView.register(UINib(nibName: "BudgetViewCell", bundle: nil), forCellReuseIdentifier: "BudgetViewCell")
        self.planTableView.reloadData()
    }

}


extension PlanViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:

            // MARK: Top View
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TopViewCell", for: indexPath) as? TopViewCell else { return UITableViewCell()}
            return cell

        case 1:

            // MARK: Goals View
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "GoalViewCell", for: indexPath) as? GoalViewCell else { return UITableViewCell()}
            return cell

        default:

            // MARK: Budget View
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "BudgetViewCell", for: indexPath) as? BudgetViewCell else {return UITableViewCell()}
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }


}
