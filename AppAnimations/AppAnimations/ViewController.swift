//
//  ViewController.swift
//  AppAnimations
//
//  Created by SP26 on 5/5/16.
//  Copyright © 2016 SP26. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var animatedView: UIView!
    
    @IBOutlet var animatedViewTopMarginConstraint: NSLayoutConstraint!
    
    @IBOutlet var animatedViewHeightConstraint: NSLayoutConstraint!
    
    var animated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var animate: UIButton!
    
    
    @IBAction func animation(sender: UIButton) {
        
        
        self.animated = !self.animated
        
        self.animatedViewHeightConstraint.constant += self.animated ? 80 : -80
        
        self.animatedViewTopMarginConstraint.constant += self.animated ? 100 : -100
        
        UIView.animateWithDuration(1.5, delay: 0.0, options: .CurveEaseInOut, animations: {() -> Void in
            
            self.animatedView.backgroundColor = self.animated ? UIColor.greenColor() : UIColor.blueColor()
            
            self.animatedView.superview?.layoutSubviews()
            
            
            }) {(finished) -> Void in
                
                
                UIView.animateWithDuration(0.9, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: .CurveLinear, animations: {()-> Void in
                    
                    
                    self.animatedViewTopMarginConstraint.constant += self.animated ? 100 : -100
                    
                    self.animatedView.superview?.layoutSubviews()
                    
                    }) {(finished) -> Void in
                        
                
                }
                
                
                
                /*
                UIView.animateWithDuration(0.7, delay: 0.0, options: .CurveEaseIn, animations: {()-> Void in
                    
                    self.animatedView.backgroundColor = self.animated ? UIColor.redColor() : UIColor.brownColor()
                    
                    self.animatedView.superview?.layoutSubviews()
                    
                    
                    
                    }) {(finished) -> Void in

                }
                */
        }
    }
}

