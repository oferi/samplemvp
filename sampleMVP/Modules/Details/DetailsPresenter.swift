//
//  DetailsPresenter.swift
//  sampleMVP
//
//  Created by Ofer Irani on 18/01/2025.
//

import Foundation

class DetailsPresenter {
    private weak var view: DetailsViewProtocol?
    private let model: String
    
    init(view: DetailsViewProtocol, model: String) {
        self.view = view
        self.model = model
    }
    
    func viewDidLoad() {
        view?.showDetails(item: model)
    }
}
