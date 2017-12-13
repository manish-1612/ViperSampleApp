//
//  MenuCell.swift
//  ViperSampleApp
//
//  Created Manish Kumar on 13/12/17.
//  Copyright © 2017 Innofied. All rights reserved.
//

import UIKit
import QuartzCore

class MenuCell: UITableViewCell {

    
    @IBOutlet weak var labelForMenuName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


extension CALayer {
    var borderColorFromUIColor: UIColor {
        get {
            return UIColor(cgColor : self.borderColor!)
        } set {
            self.borderColor = newValue.cgColor
        }
    }
}

extension MenuCell{
    

}
