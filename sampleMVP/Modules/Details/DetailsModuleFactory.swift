//
//  DetailsModuleFactory.swift
//  sampleMVP
//
//  Created by Ofer Irani on 18/01/2025.
//

import Foundation
import UIKit

class DetailsModuleFactory {
    
    static func createModule(item: String) -> DetailsViewController {
        let storeyBoard = UIStoryboard(name: "Main", bundle: nil)
        let view = storeyBoard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        let model = item
        let presenter = DetailsPresenter(view: view, model: model)
        view.presenter = presenter
        
        return view
    }
}
