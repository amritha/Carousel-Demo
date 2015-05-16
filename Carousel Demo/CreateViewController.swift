//
//  CreateViewController.swift
//  Carousel Demo
//
//  Created by Amritha Prasad on 5/12/15.
//  Copyright (c) 2015 Amritha Prasad. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var signUpView: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var checkButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func onPress(sender: AnyObject) {
        self.navigationController!.popViewControllerAnimated(true)
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        //scrollView.contentOffset = CGPoint(x: 0, y: 80)
        signUpView.frame.origin.y = -130
        buttonView.center.y = 315
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        //scrollView.contentOffset = CGPoint(x: 0, y: 80)
        signUpView.frame.origin.y = 3
        
        
        buttonView.center.y = 471
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onCheck(sender: AnyObject) {
        if checkButton.selected == false
        {
        checkButton.selected = true
        }
        else{
        checkButton.selected = false
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
