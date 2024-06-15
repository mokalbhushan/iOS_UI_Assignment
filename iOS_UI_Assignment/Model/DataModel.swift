//
//  DataModel.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import Foundation

// MARK: Model created for Dyanamic data

// Model for BudgetData

struct BudgetData {
    private let name: String
    private let imageName: String
    private let leftPurse: Double
    private let imageBackground: String

    init(name: String, image: String, leftPurse: Double, background: String) {
        self.name = name
        self.imageName = image
        self.leftPurse = leftPurse
        self.imageBackground = background
    }


    var getName: String {
        return name
    }
    var getImageString: String {
        return imageName
    }
    var getLeftPurse: Double {
        return leftPurse
    }
    var getColor: String {
        return imageBackground
    }
}


// Model for TopViewCells

struct TopViewData {
    private let title: String
    private let amount: Double

    init(title: String, amount: Double) {
        self.title = title
        self.amount = amount
    }

    var getTitle: String {
        return title
    }
    var getAmount: Double {
        return amount
    }
}
