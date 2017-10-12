//
//  UIButtonExt.swift
//  Goalist
//
//  Created by PoGo on 10/10/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

extension UIButton{
    func setSelectedColor(){
        layer.sublayers?.remove(at: 0)
        self.setGradientBackground(colorOne: Colors.colorOne, colorTwo: Colors.colorTwo)

    }
    
    func setDeselectedColor(){
        layer.sublayers?.remove(at: 0)
       self.setGradientBackground(colorOne: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), colorTwo: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))
    }
    
}

