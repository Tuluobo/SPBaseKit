//
//  UIViewController.swift
//  SPBaseKit
//
//  Created by Hao Wang on 2018/7/11.
//

#if canImport(UIKit)
import UIKit

extension UIViewController {
    
    public var originX: CGFloat {
        get { return view.originX }
        set { view.originX = newValue }
    }
    
    public var originY: CGFloat {
        get { return view.originY }
        set { view.originY = newValue }
    }
    
    public var width: CGFloat {
        get { return view.width }
        set { view.width = newValue }
    }
    
    public var height: CGFloat {
        get { return view.height }
        set { view.height = newValue }
    }
    
}

#endif
