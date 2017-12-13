//
//  LoginInteractor.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class LoginInteractor: LoginInteractorInputProtocol,
    LoginInteractorOutputProtocol{

    var presenter: LoginPresenterProtocol?
    var APIDataManager: LoginAPIDataManagerInputProtocol?
    var localDataManager: LoginLocalDataManagerInputProtocol?
    
    init() {
        // TODO: USE CUSTOM INITIALIZATION IF YOU WANT TO USE DEPENDENCY INJECTION
        // http://ilya.puchka.me/dependency-injection-in-swift/
        APIDataManager = LoginAPIDataManager()
        localDataManager = LoginLocalDataManager()
    }
    
    /**
     * Methods for communication PRESENTER -> INTERACTOR
     */
}
