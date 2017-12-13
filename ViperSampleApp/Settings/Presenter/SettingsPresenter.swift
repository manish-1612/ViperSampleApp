//
//  SettingsPresenter.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class SettingsPresenter: SettingsPresenterProtocol {

    weak private var view: SettingsViewProtocol?
    private let interactor: SettingsInteractorInputProtocol
    private let wireframe: SettingsWireframeProtocol

    init(interface: SettingsView, interactor: SettingsInteractorInputProtocol, wireframe: SettingsWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.wireframe = wireframe

        self.interactor.presenter = self
    }

}
