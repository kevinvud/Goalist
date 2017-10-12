//
//  GradientView.swift
//  Goalist
//
//  Created by PoGo on 10/12/17.
//  Copyright © 2017 PoGo. All rights reserved.
//

import UIKit

//@IBDesignable
class GradientView: UIView {
    // show setting in navigation editor so we can change color there
    
//    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.4784313725, green: 0.4549019608, blue: 0.7725490196, alpha: 1){
//        didSet{
//            self.setNeedsLayout()
//        }
//    }
//
//    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.6574598551, green: 0.8640978932, blue: 0.6674042344, alpha: 1){
//        didSet{
//            self.setNeedsLayout()
//        }
//
//
//    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [Colors.colorOne.cgColor, Colors.colorTwo.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
}
