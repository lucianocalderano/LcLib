//
//  Ext.UIView.swift
//  Kanito
//
//  Created by mac on 17/03/17.
//  Copyright © 2017 Kanito. All rights reserved.
//

import UIKit

public extension UIView {
    class func InstanceView (xibName: String? = nil) -> UIView? {
        let viewName = xibName ?? String (describing: self)
        if let array = Bundle.main.loadNibNamed(viewName, owner: self, options: nil) {
            return array.first as? UIView
        }
        return nil
    }

    func addSubviewWithConstraints (_ view: UIView, top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
        let edge = UIEdgeInsets.init(top: top, left: left, bottom: bottom, right: right)
        addSubviewWithConstraints(view, edge: edge)
    }
    
    func addSubviewWithConstraints (_ view: UIView, edge: UIEdgeInsets = UIEdgeInsets.zero) {
        self.addSubview(view)
        costraintTo(view: view, atb: .top,     f: edge.top)
        costraintTo(view: view, atb: .left,    f: edge.left)
        costraintTo(view: view, atb: .bottom,  f: edge.bottom)
        costraintTo(view: view, atb: .right,   f: edge.right)
        if self is UIScrollView {
            costraintTo(view: view, atb: .centerX, f: 0)
            costraintTo(view: view, atb: .height, f: view.frame.size.height)
        }
    }

    func costraintTo (view: UIView, atb: NSLayoutConstraint.Attribute, f: CGFloat) {
        view.translatesAutoresizingMaskIntoConstraints = false
        let dest = (atb == .height || atb == .width) ? nil : self
        self.addConstraint (NSLayoutConstraint(item: view,
                                               attribute:   atb,
                                               relatedBy:   .equal,
                                               toItem:      dest,
                                               attribute:   atb,
                                               multiplier:  1,
                                               constant:    f))
    }
}

