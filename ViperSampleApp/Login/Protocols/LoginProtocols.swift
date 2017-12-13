//
//  LoginProtocols.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import Foundation
import UIKit


//MARK: View -
protocol LoginViewProtocol: class {
    var presenter: LoginPresenterProtocol?  { get set }
    /**
     * Add here your methods for communication PRESENTER -> VIEW
     */
}

//MARK: Wireframe -
protocol LoginWireframeProtocol: class {
    var rootWireframe: RootWireframe? { get set }
    func presentLoginModule(fromWindow window: UIWindow)
    func presentLoginModule(fromNavView view: UINavigationController)
    func presentLoginModule(fromView view: UIViewController)
    /**
     * Add here your methods for communication PRESENTER -> WIREFRAME
     */
    
    func loadHomeScreenWireframe()
}

//MARK: Presenter -
protocol LoginPresenterProtocol: class {
    /**
     * Add here your methods for communication VIEW -> PROTOCOL
     */

    func showHomeScreen()
}

//MARK: Interactor -
protocol LoginInteractorInputProtocol: class {
    
    var presenter: LoginPresenterProtocol?  { get set }
    var APIDataManager: LoginAPIDataManagerInputProtocol? { get set }
    var localDataManager: LoginLocalDataManagerInputProtocol? { get set }
    
    /**
     * Add here your methods for communication PRESENTER -> INTERACTOR
     */
}
protocol LoginInteractorOutputProtocol: class {
    
    var presenter: LoginPresenterProtocol?  { get set }
    /**
     * Add here your methods for communication INTERACTOR -> PRESENTER
     */
}




//MARK: - DataManager -
protocol LoginDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> DATAMANAGER
     */
    // Data fetch functions without knowing the source (API or Local)
}

//MARK: API -
protocol LoginAPIDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
     */
    // Data fetch functions from server
}

//MARK: Local -
protocol LoginLocalDataManagerInputProtocol: class {
    /**
     * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
     */
    // Data fetch functions from local database

}
