//
//  IntroViewController.swift
//  Carousel Demo
//
//  Created by Amritha Prasad on 5/11/15.
//  Copyright (c) 2015 Amritha Prasad. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tileOneView: UIImageView!
    @IBOutlet weak var tileTwoView: UIImageView!
    @IBOutlet weak var tileThreeView: UIImageView!
    @IBOutlet weak var tileFourView: UIImageView!
    @IBOutlet weak var tileFiveView: UIImageView!
    @IBOutlet weak var tileSixView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self
        
        //Tile One
        tileOneView.frame = CGRect(x: -15, y: 435, width: 152, height: 152)
        //tileOneView.transform = CGAffineTransformMakeScale(0.75, 0.75)
        tileOneView.transform = CGAffineTransformMakeRotation(CGFloat(-15 * M_PI / 180))
        
        //Tile Two 
        tileTwoView.frame = CGRect(x: 200, y: 435, width: 152, height: 152)
        tileTwoView.transform = CGAffineTransformMakeScale(2, 2)
        tileTwoView.transform = CGAffineTransformRotate(tileTwoView.transform, CGFloat(-10 * M_PI / 180))
        
        //Tile Four
        tileFourView.frame = CGRect(x: 100, y: 435, width: 152, height: 152)
        tileFourView.transform = CGAffineTransformMakeScale(2, 2)
        tileFourView.transform = CGAffineTransformRotate(tileFourView.transform, CGFloat(20 * M_PI / 180))
        
        //Tile Five
        tileFiveView.frame = CGRect(x: -25, y: 345, width: 152, height: 152)
        tileFiveView.transform = CGAffineTransformMakeScale(2,2)
        tileFiveView.transform = CGAffineTransformRotate(tileFiveView.transform, CGFloat(9 * M_PI / 180))
        
        //Tile Six
        tileSixView.frame = CGRect(x: 90, y: 345, width: 152, height: 152)
        tileSixView.transform = CGAffineTransformMakeScale(2,2)
        tileSixView.transform = CGAffineTransformRotate(tileSixView.transform, CGFloat(-13 * M_PI / 180))
        
        //Tile Three
        tileThreeView.frame = CGRect(x: 205, y: 345, width: 152, height: 152)
        tileThreeView.transform = CGAffineTransformMakeScale(2,2)
        tileThreeView.transform = CGAffineTransformRotate(tileThreeView.transform, CGFloat(18 * M_PI / 180))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView)
    {// any offset changes
        self.tileOneView.transform = CGAffineTransformMakeScale(1, 1)
        self.tileTwoView.transform = CGAffineTransformMakeScale(1, 1)
        self.tileFourView.transform = CGAffineTransformMakeScale(1,1)
        self.tileFiveView.transform = CGAffineTransformMakeScale(1,1)
        self.tileSixView.transform = CGAffineTransformMakeScale(1,1)
        self.tileThreeView.transform = CGAffineTransformMakeScale(1,1)
        
        UIView.animateWithDuration(0.5) {
            //Tile One
            self.tileOneView.frame = CGRect(x: 46, y: 749, width: 152, height: 152)
            self.tileOneView.transform = CGAffineTransformRotate(self.tileOneView.transform, CGFloat(0))
            
            //Tile Two 
            self.tileTwoView.frame = CGRect(x: 199, y: 749, width: 75, height: 75)
            self.tileTwoView.transform = CGAffineTransformRotate(self.tileTwoView.transform, CGFloat(0))
            
            //Tile Four
            self.tileFourView.frame = CGRect(x: 46, y: 903, width: 75, height: 75)
            self.tileFourView.transform = CGAffineTransformRotate(self.tileThreeView.transform, CGFloat(0))
            
            //Tile Five
            self.tileFiveView.frame = CGRect( x: 122, y: 903, width: 75, height: 75)
            self.tileFiveView.transform = CGAffineTransformRotate(self.tileFiveView.transform, CGFloat(0))
            
            //Tile Six
            self.tileSixView.frame = CGRect( x: 199, y: 903, width: 75, height: 75)
            self.tileSixView.transform = CGAffineTransformRotate(self.tileSixView.transform, CGFloat(0))
            
            //Tile Three
            self.tileThreeView.frame = CGRect( x: 199, y: 826, width: 75, height: 75)
            self.tileThreeView.transform = CGAffineTransformRotate(self.tileThreeView.transform, CGFloat(0))
            
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
