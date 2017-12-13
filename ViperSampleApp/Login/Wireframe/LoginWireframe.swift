//
//  LoginWireframe.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class LoginWireframe: LoginWireframeProtocol {
    
    var rootWireframe: RootWireframe?
    var view: LoginView!
    var sidePanelWireframe : SidePanelWireframe?
    var homeWireframe : HomeWireframe?


    init() {
        // Change to get view from storyboard if not using progammatic UI
        self.view = LoginView.instantiate(fromAppStoryboard: .Login)
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(interface: view, interactor: interactor, wireframe: self)
        
        view.presenter = presenter
        interactor.presenter = presenter

    }
}

// MARK: LoginWireframeProtocol
extension LoginWireframe {
    func presentLoginModule(fromNavView view: UINavigationController) {
        // Push Code
        view.pushViewController(self.view, animated: true)
    }
    func presentLoginModule(fromView view: UIViewController) {
        // TODO: Present this module from another view
        // Your code goes here
    }
    // MARK: LoginWireframeProtocol
    func presentLoginModule(fromWindow window: UIWindow) {
        self.rootWireframe?.showRootViewController(self.view, inWindow: window)
    }
    
    func loadHomeScreenWireframe() {
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        sidePanelWireframe?.presentSidePanelControllerModule(fromWindow: appDelegate!.window!, rootViewController: homeWireframe!.view)
    }
    
}
