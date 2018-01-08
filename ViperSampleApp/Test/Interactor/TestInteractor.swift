//
//  TestInteractor.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 08/01/18.
//  Copyright © 2018 Innofied. All rights reserved.
//
//

import UIKit

class TestInteractor: TestInteractorInputProtocol,
    TestInteractorOutputProtocol{

    var presenter: TestPresenterProtocol?
    var APIDataManager: TestAPIDataManagerInputProtocol?
    var localDataManager: TestLocalDataManagerInputProtocol?
    
    init() {
        // TODO: USE CUSTOM INITIALIZATION IF YOU WANT TO USE DEPENDENCY INJECTION
        // http://ilya.puchka.me/dependency-injection-in-swift/
        APIDataManager = TestAPIDataManager()
        localDataManager = TestLocalDataManager()
    }
    
    /**
     * Methods for communication PRESENTER -> INTERACTOR
     */
}
