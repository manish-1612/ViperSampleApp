//
//  UICollectionViewCell.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//

import Foundation
import UIKit

//extension UICollectionViewCell {
//    override class var indentifire: String {
//        return "\(self)"
//    }
//    static func instantiateAsReusable(inCollectionView collectionView: UICollectionView,
//                                      at indexPath: IndexPath) -> Self {
//        return collectionView.dequeCell(cellClass: self, at: indexPath)
//    }
//}

extension UICollectionReusableView {
    class var indentifire: String {
        return "\(self)"
    }
    static func dequeue(kind: String, inCollectionView collectionView: UICollectionView,
                        at indexPath: IndexPath) -> Self {
        return collectionView.dequeResulableView(kind: kind, viewClass: self, at: indexPath)
    }
}
