//
//  SummaryViewController.swift
//  ContainerViewControllers
//
//  Created by l.b.do.nascimento on 06/04/20.
//  Copyright © 2020 l.b.do.nascimento. All rights reserved.
//

import UIKit

final class SummaryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("Summary View Controller Will Appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("Summary View Controller Will Disappear")
    }

}
