//
//  FontExtention.swift
//  LearningControllers
//
//  Created by tilekbek kadyrov on 5/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import UIKit

extension UIFont {
    class func appRegularFontWith(size: CGFloat) -> UIFont{
        return UIFont(name: "BrandonGrotesque-Light", size: size)!
    }
    
    class func appBoldFontWith(size: CGFloat) -> UIFont{
        return UIFont(name: "BrandonGrotesque-Black", size: size)!
    }
}
