//
//  TestView.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 08/01/18.
//  Copyright © 2018 Innofied. All rights reserved.
//
//

import UIKit

class TestView: UIViewController, TestViewProtocol {

	var presenter: TestPresenterProtocol?

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
}
