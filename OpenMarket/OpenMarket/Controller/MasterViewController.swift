//
//  MasterViewController.swift
//  OpenMarket
//
//  Created by JeongTaek Han on 2022/01/14.
//

import UIKit

class MasterViewController: UIViewController {
    
    @IBOutlet var segmentedControl: UISegmentedControl!

    private lazy var productListViewController: ProductGRIDPageViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "ListPageViewController") as? ProductGRIDPageViewController

        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController!)

        return viewController!
    }()

    private lazy var productGridViewController: UIViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)

        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "GridPageViewController")

        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    // MARK: - View Methods

    private func setupView() {
        setupSegmentedControl()

        updateView()
    }

    private func updateView() {
        if segmentedControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: productGridViewController)
            add(asChildViewController: productListViewController)
        } else {
            remove(asChildViewController: productListViewController)
            add(asChildViewController: productGridViewController)
        }
    }

    private func setupSegmentedControl() {
        // Configure Segmented Control
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "LIST", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "GRID", at: 1, animated: false)
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)

        // Select First Segment
        segmentedControl.selectedSegmentIndex = 0
    }

    // MARK: - Actions

    @objc func selectionDidChange(_ sender: UISegmentedControl) {
        updateView()
    }

    // MARK: - Helper Methods

    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChild(viewController)

        // Add Child View as Subview
        view.addSubview(viewController.view)

        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)

        // Remove Child View From Superview
        viewController.view.removeFromSuperview()

        // Notify Child View Controller
        viewController.removeFromParent()
    }

}
