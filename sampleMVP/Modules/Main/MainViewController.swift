//
//  ViewController.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import UIKit

class MainViewController: UIViewController, MainViewProtocol {
    
    var presenter: MainPresenter!
    @IBOutlet weak var image: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    @IBAction func imageTapped(_ sender: Any) {
        presenter.imageTapped(item: "A")
    }

    @IBAction func logout(_ sender: Any) {
        presenter.logout()
    }
    
    func showEmoji(emoji: String) {
        image.setBackgroundImage(UIImage(systemName: emoji), for: UIControl.State.normal)
    }
    
    deinit {
        print("==== MainViewController ended! ====")
    }
}

