//
//  ChildViewController.swift
//  ContainerViewControllers
//
//  Created by l.b.do.nascimento on 14/05/20.
//  Copyright © 2020 l.b.do.nascimento. All rights reserved.
//

import UIKit

class ChildViewController: UITableViewController {

    private let cellReuseIdentifier = "cellReuseIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
