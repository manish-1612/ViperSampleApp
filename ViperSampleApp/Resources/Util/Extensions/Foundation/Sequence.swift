//
//  Sequence.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//

import Foundation

public extension Sequence where Iterator.Element: Hashable {
	var uniqueElements: [Iterator.Element] {
		return Array(
			Set(self)
		)
	}
}
public extension Sequence where Iterator.Element: Equatable {
	var uniqueElements: [Iterator.Element] {
		return self.reduce([]) { uniqueElements, element in
			
			uniqueElements.contains(element)
				? uniqueElements
				: uniqueElements + [element]
		}
	}
}
