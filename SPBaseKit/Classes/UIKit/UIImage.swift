//
//  UIImage.swift
//  SPBaseKit
//
//  Created by Hao Wang on 2018/7/1.
//

#if canImport(UIKit)
import UIKit

extension UIImage {
    public static func image(with color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

#endif
