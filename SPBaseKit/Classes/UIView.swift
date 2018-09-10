//
//  UIView.swift
//  SPBaseKit
//
//  Created by Hao Wang on 2018/7/11.
//

import UIKit

extension UIView {
    
    public var originX: CGFloat {
        get { return frame.origin.x }
        set { frame.origin.x = newValue }
    }
    
    public var originY: CGFloat {
        get { return frame.origin.y }
        set { frame.origin.y = newValue }
    }
    
    public var width: CGFloat {
        get { return bounds.size.width }
        set { bounds.size.width = newValue }
    }
    
    public var height: CGFloat {
        get { return bounds.size.height }
        set { bounds.size.height = newValue }
    }
    
}
