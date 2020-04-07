//
//  MasterViewController.swift
//  ContainerViewControllers
//
//  Created by l.b.do.nascimento on 06/04/20.
//  Copyright © 2020 l.b.do.nascimento. All rights reserved.
//

import UIKit

final class MasterViewController: UIViewController {

    lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl()
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "Summary", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "Sessions", at: 1, animated: false)
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
    }()

    private lazy var summaryViewController: SummaryViewController = {
        var viewController = SummaryViewController()
        add(asChildViewController: viewController)
        return viewController
    }()

    private lazy var sessionsViewController: SessionsViewController = {
        var viewController = SessionsViewController()
        add(asChildViewController: viewController)
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }

    func setupView() {
        navigationItem.titleView = segmentedControl
        updateView()
    }
    private func add(asChildViewController viewController: UIViewController) {
        addChild(viewController)
        view.addSubview(viewController.view)

        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.didMove(toParent: self)
    }

    private func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }

    @objc
    func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
    }

    private func updateView() {
        if segmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: sessionsViewController)
            add(asChildViewController: summaryViewController)
        } else {
            remove(asChildViewController: summaryViewController)
            add(asChildViewController: sessionsViewController)
        }
    }
}
