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
    
    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // Setup delay function
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    // Dismiss keyboard on tap

    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    // Sign-in logic
    
    @IBAction func onSignIn(sender: UIButton) {
        
        if (EmailTextField.text == "") || (PasswordTextField.text == "") {
            println("no text")
            
            var alertview = UIAlertView(title: "Missing fields", message: "You need to type your email and password", delegate: nil, cancelButtonTitle:"Fine!")
            alertview.show()
        }
        
        else {
        
            println("youtappedme")
        
            var alertview = UIAlertView(title: "Loading...", message: nil, delegate: nil, cancelButtonTitle:nil)
            alertview.show()
            
            
    
        
            delay(2) {
            
                alertview.dismissWithClickedButtonIndex(0, animated: true)
                
                
                if (self.EmailTextField.text == "me") && (self.PasswordTextField.text == "metoo") {
                    
                    println("you got it")
                        
                    self.performSegueWithIdentifier("signin", sender: self)
                        
                    }
                    
                else {
                        
                        
                    var alertview = UIAlertView(title: "Incorrect email or password", message: "Check your credentials and try again", delegate: nil, cancelButtonTitle:"Fine!")
                        alertview.show()
                    
                    self.EmailTextField.text = ""
                    self.PasswordTextField.text = ""
                        
                    }
                }
        
            
            
        }
        
    }
//    @IBAction func onTap(sender: AnyObject) {
//        
//        println("youtappedme")
//        
//        var alertview = UIAlertView(title: "Loading", message: "Checking credentials...", delegate: nil, cancelButtonTitle: "okay")
//        
//        alertview.show()
//        
//        delay(2) {
//            
//            self.performSegueWithIdentifier("proceedtologin", sender: self)
//        }
//        
//        
//    }
//    

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
        var userInfo = notification.userInfo!
        
    
    
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        println("hello")
        
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            self.ButtonsView.frame.origin.y = 417
            
            self.LoginFormView.frame.origin.y = 152  }, completion: nil)

        
    }
    
    
    @IBAction func onBack(sender: UIButton) {
        navigationController!.popViewControllerAnimated(true)
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
