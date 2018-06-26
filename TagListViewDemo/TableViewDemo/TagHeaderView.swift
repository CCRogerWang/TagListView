//
//  TagHeaderView.swift
//  TagListViewDemo
//
//  Created by Roger on 2018/6/26.
//  Copyright © 2018年 Ela. All rights reserved.
//

import UIKit

class TagHeaderView: UITableViewHeaderFooterView {

    fileprivate typealias Action = (() -> Void)?
    
    // Set our computed property type to a closure
    fileprivate var action: Action?
    
    @IBAction func tapHeaderView(_ sender: Any) {
        if let action = action {
            action?()
        } else {
            print("no action")
        }
    }
    
    func actionHelper(action: @escaping ()->Void) {
        self.action = action
    }
    
}
