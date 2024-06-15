//
//  HomeController.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 13/06/24.
//

import UIKit

class TabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    // MARK: Setup TabController

    private func setupTabbar() {

        tabBar.isTranslucent = false
        tabBar.backgroundColor = Colors.tabbarColor

        let homeTab = UINavigationController(rootViewController: HomeViewController())
        homeTab.tabBarItem = UITabBarItem(title: "Home", image: Images.homeIcon, selectedImage: Images.homeIcon)

        let historyTab = UINavigationController(rootViewController: HistoryController())
        historyTab.tabBarItem = UITabBarItem(title: "History", image: Images.historyIcon, selectedImage: Images.historyIcon)

        let payTab = UINavigationController(rootViewController: PayController())
        payTab.tabBarItem = UITabBarItem(title: "Pay", image: Images.payIcon, selectedImage: Images.payIcon)

        let planTab = UINavigationController(rootViewController: PlanViewController.loadFromNib())
        planTab.tabBarItem = UITabBarItem(title: "Plan", image: Images.planIcon, selectedImage: Images.planIcon)


        let exchangeTab = UINavigationController(rootViewController: ExchangeController())
        exchangeTab.tabBarItem = UITabBarItem(title: "Exchange", image: Images.exchangeIcon, selectedImage: Images.exchangeIcon)

        self.viewControllers =  [homeTab, historyTab, payTab, planTab, exchangeTab]
    }
}


//  MARK: Created Controller for Tabbar Configuaration

// MARK: History Controller
class HistoryController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "History"
        self.view.backgroundColor = .systemOrange
    }
}

// MARK: Pay Controller
class PayController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Pay"
        self.view.backgroundColor = .systemPink
    }
}

// MARK: Exchange Controller
class ExchangeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Exchange"
        self.view.backgroundColor = .systemGreen
    }
}


