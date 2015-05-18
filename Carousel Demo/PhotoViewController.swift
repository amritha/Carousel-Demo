//
//  PhotoViewController.swift
//  Carousel Demo
//
//  Created by Amritha Prasad on 5/14/15.
//  Copyright (c) 2015 Amritha Prasad. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 960, height: 478)
        scrollView.contentOffset = CGPoint(x: 320, y: 0)
        pageControl.hidden = true
        
        
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        
        // Do any additional setup after loading the view.
        
        /*var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("aziz", forKey: "pressed_photo")
        defaults.synchronize()*/
       
        
        
        //didPressPhoto?.setObject("aziz", forKey: "pressed_photo")
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("aziz", forKey: "pressed_photo")
        defaults.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView)
    {
        // Get the current page based on the scroll offset
        
        
        
    }

    
    @IBAction func onShare(sender: AnyObject) {
        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("shared", forKey: "pressed_photo")
        defaults.synchronize()
        
        var alertView = UIAlertView(title: "Sharing...", message: nil, delegate: self, cancelButtonTitle: nil)
        alertView.show()
        delay(2){
        
        alertView.title = "Shared!"
            delay(1)
                {
            alertView.dismissWithClickedButtonIndex(0, animated: true)
            }
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
