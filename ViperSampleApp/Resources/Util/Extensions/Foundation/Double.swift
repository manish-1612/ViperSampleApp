//
//  Double.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//

import Foundation

extension Double {
    func round(to: Int) -> Double {
        let divisor = pow(10.0, Double(to))
        return Darwin.round(self * divisor) / divisor
    }
}
