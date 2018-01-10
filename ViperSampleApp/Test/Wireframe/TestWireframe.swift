//
//  TestWireframe.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 08/01/18.
//  Copyright © 2018 Manish Kumar. All rights reserved.
//
//

import UIKit

class TestWireframe: TestWireframeProtocol {
    
    var rootWireframe: RootWireframe?
    var view: TestView!

    init() {
        // Change to get view from storyboard if not using progammatic UI
        self.view = TestView.instantiate(fromAppStoryboard: .Test)
        let interactor = TestInteractor()
        let presenter = TestPresenter(interface: view, interactor: interactor, wireframe: self)
        
        view.presenter = presenter
        interactor.presenter = presenter

    }
}

// MARK: TestWireframeProtocol
extension TestWireframe {
    func presentTestModule(fromNavView view: UINavigationController) {
        // Push Code
        view.pushViewController(self.view, animated: true)
    }
    func presentTestModule(fromView view: UIViewController) {
        // TODO: Present this module from another view
        // Your code goes here
    }
    // MARK: LoginWireframeProtocol
    func presentTestModule(fromWindow window: UIWindow) {
        self.rootWireframe?.showRootViewController(self.view, inWindow: window)
    }
}
