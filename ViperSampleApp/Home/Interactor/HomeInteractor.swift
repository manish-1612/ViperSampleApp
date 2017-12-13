//
//  HomeInteractor.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class HomeInteractor: HomeInteractorInputProtocol,
    HomeInteractorOutputProtocol{

    var presenter: HomePresenterProtocol?
    var APIDataManager: HomeAPIDataManagerInputProtocol?
    var localDataManager: HomeLocalDataManagerInputProtocol?
    
    init() {
        // TODO: USE CUSTOM INITIALIZATION IF YOU WANT TO USE DEPENDENCY INJECTION
        // http://ilya.puchka.me/dependency-injection-in-swift/
        APIDataManager = HomeAPIDataManager()
        localDataManager = HomeLocalDataManager()
    }
    
    /**
     * Methods for communication PRESENTER -> INTERACTOR
     */
}
