//
//  ViewController.swift
//  Demo
//
//  Created by Elton Eze on 1/12/17.
//  Copyright © 2017 EzeElton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueOne: UITextField!
    
    @IBOutlet weak var valueTwo: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var info: UILabel!
    
    @IBOutlet weak var colorBox: UIView!
    
    
    @IBAction func addNumbers() {
        
        let TW0:Int = 2
        
        if valueOne.text == nil || valueOne.text == "" {
            return
        }
        
        if valueTwo.text == nil || valueTwo.text == "" {
            return
        }
        
            
        if Float(valueOne.text!) == nil{
            info.text = "Value 1 is not a number"
            return
        }
            
            if Float(valueTwo.text!) == nil {
                info.text = "Value 2 is not a number"
                return
        }

        let a = Float(valueOne.text!)
        let b = Float(valueTwo.text!)
        let sum = a! + b!
        result.text = String(sum)
        
        //create new frame to change size if the object
        var newFrame = colorBox.frame
        newFrame.size.width = CGFloat(sum)
        colorBox.frame = newFrame
        
        //check if odd or even
        
        if Int(sum) % TW0 == 0 {
            info.text = "Even"
            //change the color of the label text
            info.textColor = UIColor.green
            
        }
        else{
            info.text = "Odd"
            info.textColor = UIColor.red
        }
        
        
    }
    
   
    
    @IBAction func multiplyNumbers() {
        
        let TW0:Int = 2
        
        if valueOne.text == nil || valueOne.text == "" {
            return
        }
        
        if valueTwo.text == nil || valueTwo.text == "" {
            return
        }
        
        if Float(valueOne.text!) == nil{
            info.text = "Value 1 is not a number"
            return
        }
        
        if Float(valueTwo.text!) == nil {
            info.text = "Value 2 is not a number"
            return
        }
        

        
        let a = Float(valueOne.text!)
        let b = Float(valueTwo.text!)
        let sum = a! * b!
        result.text = String(sum)
        
        //create new frame to change size if the object
        var newFrame = colorBox.frame
        newFrame.size.width = CGFloat(sum)
        colorBox.frame = newFrame
        
        //check if odd or even

        if Int(sum) % TW0 == 0 {
            info.text = "Even"
            info.textColor = UIColor.green
        }
        else{
            info.text = "Odd"
            info.textColor = UIColor.red
        }
        
    }
    
    //using a slider to move the UIView Box
    @IBAction func moveSlider(sender: UISlider) {
    
        colorBox.frame.origin.x = CGFloat(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

