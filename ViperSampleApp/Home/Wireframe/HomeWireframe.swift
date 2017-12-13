//
//  HomeWireframe.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class HomeWireframe: HomeWireframeProtocol {
    
    var rootWireframe: RootWireframe?
    var view: HomeView!

    init() {
        // Change to get view from storyboard if not using progammatic UI
        self.view = HomeView.instantiate(fromAppStoryboard: .Home)
        let interactor = HomeInteractor()
        let presenter = HomePresenter(interface: view, interactor: interactor, wireframe: self)
        
        view.presenter = presenter
        interactor.presenter = presenter

    }
}

// MARK: HomeWireframeProtocol
extension HomeWireframe {
    func presentHomeModule(fromNavView view: UINavigationController) {
        // Push Code
        view.pushViewController(self.view, animated: true)
    }
    func presentHomeModule(fromView view: UIViewController) {
        // TODO: Present this module from another view
        // Your code goes here
    }
    // MARK: HomeWireframeProtocol
    func presentHomeModule(fromWindow window: UIWindow) {
        self.rootWireframe?.showRootViewController(self.view, inWindow: window)
    }
}
