//
//  SettingsInteractor.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class SettingsInteractor: SettingsInteractorInputProtocol,
    SettingsInteractorOutputProtocol{

    var presenter: SettingsPresenterProtocol?
    var APIDataManager: SettingsAPIDataManagerInputProtocol?
    var localDataManager: SettingsLocalDataManagerInputProtocol?
    
    init() {
        // TODO: USE CUSTOM INITIALIZATION IF YOU WANT TO USE DEPENDENCY INJECTION
        // http://ilya.puchka.me/dependency-injection-in-swift/
        APIDataManager = SettingsAPIDataManager()
        localDataManager = SettingsLocalDataManager()
    }
    
    /**
     * Methods for communication PRESENTER -> INTERACTOR
     */
}
