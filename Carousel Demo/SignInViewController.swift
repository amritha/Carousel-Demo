//
//  SignInViewController.swift
//  Carousel Demo
//
//  Created by Amritha Prasad on 5/11/15.
//  Copyright (c) 2015 Amritha Prasad. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIAlertViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textImageView: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var buttonImageView: UIImageView!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signinView: UIView!
    @IBOutlet weak var buttonView: UIView!
    
    
    var initialCenter : CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        initialCenter = self.buttonView.center
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        //scrollView.contentOffset = CGPoint(x: 0, y: 80)
        signinView.frame.origin.y = -60
        
        
       buttonView.center.y = 230
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        //scrollView.contentOffset = CGPointZero
        signinView.frame.origin.y = 66
        buttonView.center = initialCenter
        
    }
    
    @IBAction func onBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func didPressSignIn(sender: AnyObject) {
        
        if emailField.text.isEmpty || passwordField.text.isEmpty
        {
            var alertView = UIAlertView(title: "Oops!", message: "Please enter an email / password to sign in", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
            
        }
        else
        {
            var loadingAlertView = UIAlertView(title: "Signing In...", message: nil, delegate: self, cancelButtonTitle: nil)
            loadingAlertView.show()
            
            delay(2) {
                if (self.emailField.text == "amritha@uber.com" && self.passwordField.text == "aziz")
                {
                    
                    
                    loadingAlertView.dismissWithClickedButtonIndex(0, animated: true)
                    self.performSegueWithIdentifier("loginSegue", sender: nil)
                    
                }
                else
                {
                    loadingAlertView.dismissWithClickedButtonIndex(0, animated: true)
                    var wrongAlertView = UIAlertView(title: "Incorrect Login", message: "Please enter the correct email and password combination", delegate: self, cancelButtonTitle: "OK")
                    self.view.endEditing(true)
                    wrongAlertView.show()
                    
                }
            }
            
        }
    }
    /*
    // MARK: - Navigationr
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
