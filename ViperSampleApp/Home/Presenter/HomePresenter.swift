//
//  HomePresenter.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class HomePresenter: HomePresenterProtocol {

    weak private var view: HomeViewProtocol?
    private let interactor: HomeInteractorInputProtocol
    private let wireframe: HomeWireframeProtocol

    init(interface: HomeView, interactor: HomeInteractorInputProtocol, wireframe: HomeWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.wireframe = wireframe

        self.interactor.presenter = self
    }

}
