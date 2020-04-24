//
//  ColorConstants.swift
//  Help-Up
//
//  Created by Harsha Kuruwita on 4/23/20.
//  Copyright © 2020 Harsha Kuruwita. All rights reserved.
//
import UIKit

struct AppColor {

    private struct Alphas {
        static let Opaque = CGFloat(1)
        static let SemiOpaque = CGFloat(0.8)
        static let SemiTransparent = CGFloat(0.5)
        static let Transparent = CGFloat(0.3)
    }

    static let appPrimaryColor =  UIColor.white.withAlphaComponent(Alphas.SemiOpaque)
    static let appSecondaryColor =  UIColor.blue.withAlphaComponent(Alphas.Opaque)

    struct Primary {
        
        static let Common = UIColor(red: 0.92, green: 0.58, blue: 0.20, alpha: 1.00)
    }

    
}
