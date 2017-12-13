//
//  HomeView.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class HomeView: UIViewController, HomeViewProtocol {

	var presenter: HomePresenterProtocol?

    // MARK: - View Life Cycle Methods
	override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    //MARK:- IBActions
    
    @IBAction func menuButtonClicked(_ sender: UIButton) {
        openSideMenu()
    }
    
    func openSideMenu(){
        SlideNavigationController.sharedInstance().open(MenuLeft, withCompletion: {})
        
    }

    
    
}
