//
//  DetailsViewController.swift
//  sampleMVP
//
//  Created by Ofer Irani on 18/01/2025.
//

import Foundation
import UIKit

protocol DetailsViewProtocol: AnyObject {
    func showDetails(item: String)
}

class DetailsViewController : UIViewController, DetailsViewProtocol {
    
    
    @IBOutlet weak var label: UILabel!
    
    var presenter: DetailsPresenter!
    
    override func viewDidLoad() {
        presenter.viewDidLoad()
    }
    
    func showDetails(item: String) {
        label.text = item
    }
    
    deinit {
        print("==== DetailsViewController ended! ====")
    }
}
