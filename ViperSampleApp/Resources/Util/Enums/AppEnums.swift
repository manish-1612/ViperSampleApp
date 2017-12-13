//
//  AppEnums.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//

import Foundation


public enum SideMenuAppOptions : String{
    
    case home = "HOME"
    case settings = "SETTINGS"
    case logout = "LOGOUT"
    
    
    var value: String {
        return NSLocalizedString(self.rawValue, comment: "")
    }
    
    static let enumArray = [home, settings, logout]
    
    
    static let count: Int = {
        return SideMenuAppOptions.logout.hashValue + 1
    }()
    
    static func valueAtIndex(index : Int) -> String {
        return SideMenuAppOptions.enumArray[index].value
    }
    
}


