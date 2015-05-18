//
//  ImageViewController.swift
//  Carousel Demo
//
//  Created by Amritha Prasad on 5/14/15.
//  Copyright (c) 2015 Amritha Prasad. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    @IBOutlet weak var bannerView: UIImageView!
    @IBOutlet weak var xButton: UIButton!
    @IBOutlet weak var bannerButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = feedView.image!.size
        
        // Do any additional setup after loading the view.
        
        self.bannerView.alpha = 1
        self.bannerView.alpha = 1
        self.bannerButton.alpha = 1
        
        
        
        
        

        
        
        

    }
    
    override func viewDidAppear(animated: Bool) {
        var defaults = NSUserDefaults.standardUserDefaults()
        var stringValue = defaults.objectForKey("pressed_photo") as! String
        
        println(stringValue)

        if stringValue == "shared"
        {
            self.bannerView.alpha = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressX(sender: AnyObject) {
        UIView.animateWithDuration(0.2){
        self.bannerView.alpha = 0
        self.xButton.alpha = 0
        self.bannerButton.alpha = 0
        }
    }

    @IBAction func onPicPress(sender: AnyObject) {
        
        println("worked!")
        
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
