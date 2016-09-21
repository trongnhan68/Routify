//
//  GJButton.swift
//  GoodJob
//
//  Created by Jacky Nguyen on 9/12/16.
//  Copyright © 2016 Jacky. All rights reserved.
//

import Foundation
import UIKit

class GJButton: UIButton {

    override private init(frame: CGRect) {
        super.init(frame: frame);
        
        commonInit(frame: frame);
    };
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        //fatalError("init(coder:) has not been implemented")
    }
    
    func commonInit(frame: CGRect) -> Void {
        // body
        self.layer.borderWidth = 1;
        self.layer.borderColor = UIColor.blue.cgColor;
    }
    
    @IBInspectable var boderColor : UIColor? {
        didSet {
            layer.borderColor = boderColor?.cgColor;
        }
    }

    
}
