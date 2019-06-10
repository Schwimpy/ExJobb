//
//  Extensions.swift
//  Infotiv OnCall
//
//  Created by Simon Winther on 2019-05-16.
//  Copyright © 2019 Infotiv AB. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static let InfotivOrange = UIColor().colorFromHex("f26822")
    static let InfotivLightGray = UIColor().colorFromHex("646767")
    static let InfotivDarkGray = UIColor().colorFromHex("47484a")
    static let InfotivBehindIcons = UIColor().colorFromHex("635e5f")
    static let InfotivWhite = UIColor().colorFromHex("dddcdc")
    
    func colorFromHex(_ hex: String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.black
        }
        
        var rgb : UInt32 = 0
        Scanner(string: hexString).scanHexInt32(&rgb)
        
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255 ,
                            green: CGFloat((rgb & 0x00FF00) >> 8) / 255,
                            blue: CGFloat(rgb & 0x0000FF) / 255,
                            alpha: 1.0)
        

    }
}

extension UIViewController {
    func setBackgroundColor(){
        let backgroundView = UIView()
        
        view.addSubview(backgroundView)
        backgroundView.translatesAutoresizingMaskIntoConstraints = false;
        backgroundView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true;
        backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true;
        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true;
        backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true;
        
        backgroundView.backgroundColor = UIColor.InfotivDarkGray
        view.sendSubview(toBack: backgroundView)
    }
    
}

























