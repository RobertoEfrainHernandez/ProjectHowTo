//
//  Extensions.swift
//  Youtube
//
//  Created by Elton Eze on 10/11/17.
//  Copyright © 2017 EzeElton. All rights reserved.
//

import UIKit

extension UIView{
    
    //function to resize each image view. Paramenter needed are the size and view
    func addConstraintsWithFormat(format: String, view: UIView...){
        var viewsDictionary = [String: UIView]()
        for(index,view) in view.enumerated(){
            let key  = "v\(index)"
            //make  each view visible
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat:  format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}


extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
