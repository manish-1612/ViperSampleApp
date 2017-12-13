//
//  SidePanelAPIDataManager.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit

class SidePanelAPIDataManager: SidePanelAPIDataManagerInputProtocol {


    private let interactor : SidePanelInteractorOutputProtocol?
    
    init(interactor : SidePanelInteractorOutputProtocol) {
        self.interactor = interactor
    }
    
    func makeAPICallToLogoutUser() {
        
    }
    


}
