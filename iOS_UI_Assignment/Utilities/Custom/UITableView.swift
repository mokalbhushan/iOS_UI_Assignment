//
//  UITableView.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 15/06/24.
//

import Foundation
import UIKit

// MARK: Custom TableviewClass for dynamic tableView
class CustomTableView: UITableView {

    private let maxHeight = CGFloat(2000)
    private let minHeight = CGFloat(65)

    override public func layoutSubviews() {
        super.layoutSubviews()
        if bounds.size != intrinsicContentSize {
            invalidateIntrinsicContentSize()
        }
    }

    override public var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        if contentSize.height > maxHeight {
            return CGSize(width: contentSize.width, height: maxHeight)
        } else if contentSize.height < minHeight {
            return CGSize(width: contentSize.width, height: minHeight)
        } else {
            return CGSize(width: contentSize.width, height: contentSize.height)
        }
    }

}
