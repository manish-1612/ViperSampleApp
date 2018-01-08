//
//  TestProtocols.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 08/01/18.
//  Copyright © 2018 Innofied. All rights reserved.
//
//

import Foundation
import UIKit


//MARK: View -
protocol TestViewProtocol: class {
    var presenter: TestPresenterProtocol?  { get set }
    /**
     * Add here your methods for communication PRESENTER -> VIEW
     */
}

//MARK: Wireframe -
protocol TestWireframeProtocol: class {
    var rootWireframe: RootWireframe? { get set }
    func presentTestModule(fromWindow window: UIWindow)
    func presentTestModule(fromNavView view: UINavigationController)
    func presentTestModule(fromView view: UIViewController)
    /**
     * Add here your methods for communication PRESENTER -> WIREFRAME
     */
    
}

//MARK: Presenter -
protocol TestPresenterProtocol: class {
    /**
     * Add here your methods for communication VIEW -> PROTOCOL
     */

}

//MARK: Interactor -
protocol TestInteractorInputProtocol: class {
    
    var presenter: TestPresenterProtocol?  { get set }
    var APIDataManager: TestAPIDataManagerInputProtocol? { get set }
    var localDataManager: TestLocalDataManagerInputProtocol? { get set }
    
    /**
     * Add here your methods for communication PRESENTER -> INTERACTOR
     */
}
protocol TestInteractorOutputProtocol: class {
    
    var presenter: TestPresenterProtocol?  { get set }
    /**
     * Add here your methods for communication INTERACTOR -> PRESENTER
     */
}




//MARK: - DataManager -
protocol TestDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> DATAMANAGER
     */
    // Data fetch functions without knowing the source (API or Local)
}

//MARK: API -
protocol TestAPIDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
     */
    // Data fetch functions from server
}

//MARK: Local -
protocol TestLocalDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
     */
    // Data fetch functions from local database

}
