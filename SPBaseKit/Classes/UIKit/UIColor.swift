//
//  UIColor.swift
//  SPBaseKit
//
//  Created by Hao Wang on 2018/6/30.
//

#if canImport(UIKit)
import UIKit

extension UIColor {
    public convenience init?(hexStr: String) {
        guard !hexStr.isEmpty else { return nil }
        var hex = hexStr.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if hex.hasPrefix("#") {
            hex = hex.substring(from: "#") ?? ""
        }
        if hex.hasPrefix("0x") {
            hex = hex.substring(from: "0x") ?? ""
        }
        guard !hex.isEmpty else { return nil }
        if hex.count == 6 {
            var rgb: UInt32 = 0
            Scanner(string: hex).scanHexInt32(&rgb)
            self.init(rgb: rgb)
        } else if hex.count == 8 {
            var rgba: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&rgba)
            self.init(rgba: rgba)
        } else {
            return nil
        }
    }
    
    public class func changeAlpha(_ alpha: CGFloat, color: UIColor) -> UIColor {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        return UIColor(red: r, green: g, blue: b, alpha: alpha)
    }
    
    public convenience init(rgb: UInt32, a: UInt32) {
        self.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgb & 0x0000FF) / 255.0,
                  alpha: CGFloat(a & 0x0000FF) / 255.0
        )
    }
    
    public convenience init(rgb: UInt32) {
        self.init(red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgb & 0x0000FF) / 255.0,
                  alpha: CGFloat(1.0)
        )
    }
    
    public convenience init(rgba: UInt64) {
        self.init(red: CGFloat((rgba & 0xFF000000) >> 24) / 255.0,
                  green: CGFloat((rgba & 0x00FF0000) >> 16) / 255.0,
                  blue: CGFloat((rgba & 0x0000FF00) >> 8) / 255.0,
                  alpha: CGFloat(rgba & 0x000000FF) / 255.0
        )
    }
}

#endif
