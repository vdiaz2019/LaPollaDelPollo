//
//  UIRoundButton.swift
//  miclaroApp
//
//  Created by Jordan Capa on 8/27/19.
//  Copyright © 2019 Aceleradora Mobile Peru. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class UIRoundButton :UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
        
    }
    
    @IBInspectable var cornerRadius: CGFloat = 20 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
}
