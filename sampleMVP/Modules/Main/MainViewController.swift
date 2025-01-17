//
//  ViewController.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import UIKit

class MainViewController: UIViewController, MainView {
    
    var presenter: MainPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var ofer: UIImageView!
    
    @IBAction func logout(_ sender: Any) {
        presenter.logout()
    }
    
    deinit {
        print("==== MainViewController ended! ====")
    }
    
}

