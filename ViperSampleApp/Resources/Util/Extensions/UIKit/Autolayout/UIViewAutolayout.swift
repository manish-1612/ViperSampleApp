//
//  UIView.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//

import UIKit

public extension UIView {

    // UIView class function to create an view with 
    // translateAutoResizingMaskIntoConstraints is disabled
    class func autolayoutView() -> Self {
        let view = self.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}

extension UIEdgeInsets {
    init(margin: CGFloat) {
        self.top = margin
        self.bottom = margin
        self.left = margin
        self.right = margin
    }
    init(sidePadding: CGFloat, verticalPadding: CGFloat) {
        self.top = verticalPadding
        self.bottom = verticalPadding
        self.left = sidePadding
        self.right = sidePadding
    }
}
