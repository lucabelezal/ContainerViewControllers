//
//  SessionsViewController.swift
//  ContainerViewControllers
//
//  Created by l.b.do.nascimento on 06/04/20.
//  Copyright © 2020 l.b.do.nascimento. All rights reserved.
//

import UIKit

final class SessionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        print("Sessions View Controller Will Appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("Sessions View Controller Will Disappear")
    }
}
