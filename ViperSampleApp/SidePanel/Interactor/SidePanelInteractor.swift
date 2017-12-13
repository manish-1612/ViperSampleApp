//
//  SidePanelInteractor.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//
//

import UIKit


class  SidePanelInteractor:  SidePanelInteractorInputProtocol,
     SidePanelInteractorOutputProtocol{

    var presenter:  SidePanelPresenterProtocol?
    var APIDataManager:  SidePanelAPIDataManagerInputProtocol?
    var localDataManager:  SidePanelLocalDataManagerInputProtocol?
    
    init() {
        self.APIDataManager =  SidePanelAPIDataManager(interactor: self)
    }
    
    func logoutUser() {
        
    }
    
    func directUserAsPerServerResponseForLogout(response: String) {
        
    }

}
