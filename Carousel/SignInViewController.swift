//
//  SignInViewController.swift
//  Carousel
//
//  Created by Loredana Crisan on 9/21/14.
//  Copyright (c) 2014 Loredana Crisan. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIAlertViewDelegate {

    @IBOutlet weak var LoginFormView: UIView!

    @IBOutlet weak var ButtonsView: UIView!
    override func viewDidLoad() {
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        println("hello")
        
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            self.ButtonsView.frame.origin.y = self.view.frame.size.height - kbSize.height - self.ButtonsView.frame.size.height
        
        self.LoginFormView.frame.origin.y = 75  }, completion: nil)
    

    
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        println("bye")
        
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
