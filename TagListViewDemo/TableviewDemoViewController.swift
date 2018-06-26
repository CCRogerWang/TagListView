//
//  TableviewDemoViewController.swift
//  TagListViewDemo
//
//  Created by Roger on 2018/6/26.
//  Copyright © 2018年 Ela. All rights reserved.
//

import UIKit

class TableviewDemoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TagListViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "TableView Demo"
        tableView.register(UINib(nibName: "TagTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - tableview delegate datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TagTableViewCell
        cell.contentView.frame.size.width = tableView.frame.width
        cell.contentView.layoutSubviews()
        cell.selectionStyle = .none
        cell.tagListView.removeAllTags()
        cell.tagListView.addTags(["person1", "person2", "person3", "person4", "person2", "person3", "person4"
            , "person2", "person3", "person4", "person2", "person3", "person4", "person2", "person3", "person4"])
        cell.tagListView.textFont = UIFont.systemFont(ofSize: 20)
        
        cell.tagListView.paddingX = 10
        cell.tagListView.paddingY = 10
        cell.tagListView.marginX = 10
        cell.tagListView.marginY = 10
        
        cell.tagListView.tagBackgroundColor = UIColor.white
        cell.tagListView.borderColor = UIColor.red
        cell.tagListView.textColor = UIColor.black
        cell.tagListView.borderWidth = 1
        cell.tagListView.tagSelectedBackgroundColor = UIColor.red
        cell.tagListView.selectedTextColor = UIColor.white
        
        cell.tagListView.cornerRadius = 10
        
        cell.tagListView.delegate = self
        return cell
    }

    // MARK: - TagListViewDelegate
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        print("Tag pressed: \(title), \(sender)")
        tagView.isSelected = !tagView.isSelected
    }
    
    func tagRemoveButtonPressed(_ title: String, tagView: TagView, sender: TagListView) {
        print("Tag Remove pressed: \(title), \(sender)")
        sender.removeTagView(tagView)
    }
}
