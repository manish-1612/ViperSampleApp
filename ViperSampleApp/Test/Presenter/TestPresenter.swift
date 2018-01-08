//
//  TestPresenter.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 08/01/18.
//  Copyright © 2018 Innofied. All rights reserved.
//
//

import UIKit

class TestPresenter: TestPresenterProtocol {

    weak private var view: TestViewProtocol?
    private let interactor: TestInteractorInputProtocol
    private let wireframe: TestWireframeProtocol

    init(interface: TestView, interactor: TestInteractorInputProtocol, wireframe: TestWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.wireframe = wireframe

        self.interactor.presenter = self
    }

}
