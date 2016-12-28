//
//  UIColor.swift
//  EtherPortfolio
//
//  Created by Nicolas Mahé on 24/03/16.
//  Copyright © 2016 Nicolas Mahé. All rights reserved.
//

import UIKit

extension UIColor {
  
  convenience init(hex: String, alpha: CGFloat? = 1.0) {
    // Convert hex string to an integer
    let hexint = Int(UIColor.intFromHexString(hex))
    let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
    let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
    let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
    let alpha = alpha!
    
    //init
    self.init(red: red, green: green, blue: blue, alpha: alpha)
  }
  
  fileprivate static func intFromHexString(_ hexStr: String) -> UInt32 {
    var hexInt: UInt32 = 0
    // Create scanner
    let scanner: Scanner = Scanner(string: hexStr)
    // Tell scanner to skip the # character
    scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
    // Scan hex value
    scanner.scanHexInt32(&hexInt)
    return hexInt
  }
  
  convenience init(h: CGFloat, s: CGFloat, b: CGFloat) {
    self.init(hue: h/360.0, saturation: s/100.0, brightness: b/100.0, alpha: 1.0)
  }
  
}


extension UIColor {
  func colorWithHue(_ newHue: CGFloat) -> UIColor {
    var saturation: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
    self.getHue(nil, saturation: &saturation, brightness: &brightness, alpha: &alpha)
    return UIColor(hue: newHue, saturation: saturation, brightness: brightness, alpha: alpha)
  }
  func colorWithSaturation(_ newSaturation: CGFloat) -> UIColor {
    var hue: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
    self.getHue(&hue, saturation: nil, brightness: &brightness, alpha: &alpha)
    return UIColor(hue: hue, saturation: newSaturation, brightness: brightness, alpha: alpha)
  }
  func colorWithBrightness(_ newBrightness: CGFloat) -> UIColor {
    var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, alpha: CGFloat = 1.0
    self.getHue(&hue, saturation: &saturation, brightness: nil, alpha: &alpha)
    return UIColor(hue: hue, saturation: saturation, brightness: newBrightness, alpha: alpha)
  }
  func colorWithAlpha(_ newAlpha: CGFloat) -> UIColor {
    var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, brightness: CGFloat = 1.0
    self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: nil)
    return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: newAlpha)
  }
  func colorWithHighlight(_ highlight: CGFloat) -> UIColor {
    var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
    self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    return UIColor(red: red * (1-highlight) + highlight, green: green * (1-highlight) + highlight, blue: blue * (1-highlight) + highlight, alpha: alpha * (1-highlight) + highlight)
  }
  func colorWithShadow(_ shadow: CGFloat) -> UIColor {
    var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
    self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
    return UIColor(red: red * (1-shadow), green: green * (1-shadow), blue: blue * (1-shadow), alpha: alpha * (1-shadow) + shadow)
  }
}
