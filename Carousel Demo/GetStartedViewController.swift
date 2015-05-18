//
//  GetStartedViewController.swift
//  Carousel Demo
//
//  Created by Amritha Prasad on 5/14/15.
//  Copyright (c) 2015 Amritha Prasad. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {
    @IBOutlet weak var viewCheck: UIButton!
    @IBOutlet weak var shareCheck: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var stringValue = defaults.objectForKey("pressed_photo") as! String
        println(stringValue)


        //viewCheck.selected = false
        //shareCheck.selected = false
        /*if stringValue == "aziz"
        {
        viewCheck.selected = true
        }
        else if stringValue == "share"
        {
        viewCheck.selected = true
        shareCheck.selected = true
        }*/
        
        if stringValue == "aziz"     {
            
        viewCheck.selected = true

        }
            
        
        else if stringValue == "shared"
        {
        viewCheck.selected = true

        shareCheck.selected = true
        }
        
        
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
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
