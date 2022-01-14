//
//  ViewController.swift
//  Pods
//
//  Created by JeongTaek Han on 2022/01/13.
//

import UIKit

class VViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    let name = "\(self)"
    
    override func viewWillAppear(_ animated: Bool) {
        print(name, "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(name, "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(name, "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(name, "viewDidDisappear")
    }
    
    deinit {
        print(name, "deinit")
    }
    
}
