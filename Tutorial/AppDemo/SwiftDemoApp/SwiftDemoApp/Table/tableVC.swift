//
//  tableVC.swift
//  SwiftDemoApp
//
//  Created by 张子介 on 2019/7/9.
//  Copyright © 2019 张子介. All rights reserved.
//

import UIKit

class tableContainerVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let typeName: [String] = ["tableview", "collectionView"]
    let reuseIdentStr = "tableTypeCell"
    var tableView: UITableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = self.view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentStr)
        self.view.addSubview(tableView)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.typeName.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : UITableViewCell? = self.tableView.dequeueReusableCell(withIdentifier: reuseIdentStr)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: reuseIdentStr)
        }
        cell?.textLabel?.text = self.typeName[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }

}
