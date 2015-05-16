//
//  TutorialViewController.swift
//  Carousel Demo
//
//  Created by Amritha Prasad on 5/12/15.
//  Copyright (c) 2015 Amritha Prasad. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var spinImageView: UIImageView!
    @IBOutlet weak var backSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        
       
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView)
    {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        self.pageControl.alpha = 0
       
        if pageControl.currentPage == 3
        {
            UIView.animateWithDuration(0.3, animations: {
                self.spinImageView.alpha = 1
                self.backSwitch.alpha = 1
            
            })
            /*pageControl.hidden = true
            spinImageView.hidden = false*/
            
        }
        
        else{
             self.pageControl.alpha = 1
            UIView.animateWithDuration(0.3, animations:{
        self.spinImageView.alpha = 0
                self.backSwitch.alpha = 0
       
            })
            /*pageControl.hidden = false
            spinImageView.hidden = true*/
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
