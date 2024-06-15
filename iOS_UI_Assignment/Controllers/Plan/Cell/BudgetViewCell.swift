//
//  BudgetViewCell.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import UIKit

class BudgetViewCell: UITableViewCell {

    @IBOutlet var budgetTableView: CustomTableView!
    
    @IBOutlet var tableviewHeightConstrains: NSLayoutConstraint!
    
    var budgetData: [BudgetData] = [
        BudgetData(name: "Food & Drinks", image: "food", leftPurse: 890.00, background: "#464AC5"),
        BudgetData(name: "Travel", image: "travel", leftPurse: 360.00, background: "#FACC40")
    ] {
            didSet {
                updateTableViewHeight()
            }
        }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupTableView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateTableViewHeight() {
            budgetTableView.reloadData()
            budgetTableView.layoutIfNeeded()

            let totalHeight = budgetTableView.contentSize.height
            tableviewHeightConstrains.constant = totalHeight
    }

    // Setup TableView for Budget Cell
    func setupTableView() {
        budgetTableView.delegate = self
        budgetTableView.dataSource = self
        self.budgetTableView.register(UINib(nibName: "BudgetItemCell", bundle: nil), forCellReuseIdentifier: "BudgetItemCell")
        self.budgetTableView.reloadData()
    }

}


extension BudgetViewCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return budgetData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BudgetItemCell", for: indexPath) as? BudgetItemCell else { return UITableViewCell()}
        cell.setupData(data: budgetData[indexPath.row])
        return cell
    }
    

}
