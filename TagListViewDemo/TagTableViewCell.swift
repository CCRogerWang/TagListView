//
//  TagTableViewCell.swift
//  TagListViewDemo
//
//  Created by Roger on 2018/6/26.
//  Copyright © 2018年 Ela. All rights reserved.
//

import UIKit

class TagTableViewCell: UITableViewCell {

    @IBOutlet weak var tagListView: TagListView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    override func prepareForReuse() {
//        tagListView.removeAllTags()
//    }
}
