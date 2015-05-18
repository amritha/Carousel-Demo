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
    
    var yOffsets : [Float] = [-280, -250, -420, -400, -510, -490]
    var xOffsets : [Float] = [-75, 35, 8, 85, -115, -100]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]

    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("blank", forKey: "pressed_photo")
        defaults.synchronize()
        // Do any additional setup after loading the view.
        scrollView.contentSize = imageView.image!.size
        scrollView.delegate = self
        
        scrollView.sendSubviewToBack(imageView)
        
        /*
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
        tileThreeView.transform = CGAffineTransformRotate(tileThreeView.transform, CGFloat(18 * M_PI / 180))*/
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var offset = Float(scrollView.contentOffset.y)
        
        //x offset: -30 -> 0
        var tx = convertValue(offset, 0, 568, -75, 0)
        //y offset: -285 -> 0
        var ty = convertValue(offset, 0, 568, -280, 0)
        
        var scale = convertValue(offset, 0, 568, 1, 1)
        
        var rotation = convertValue(offset, 0, 568, -10, 0)
        
        //tileOne
        tileOneView.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        tileOneView.transform = CGAffineTransformScale(tileOneView.transform, CGFloat(scale), CGFloat(scale))
        tileOneView.transform = CGAffineTransformRotate(tileOneView.transform, CGFloat(Double(rotation) * M_PI / 180))
        
        //tileTwo
        var t2x = convertValue(offset, 0, 568, 35, 0)
        //y offset: -285 -> 0
        var t2y = convertValue(offset, 0, 568, -250, 0)
        
        var scale2 = convertValue(offset, 0, 568, 1.65, 1)
        
        var rotation2 = convertValue(offset, 0, 568, -10, 0)
        
        tileTwoView.transform = CGAffineTransformMakeTranslation(CGFloat(t2x), CGFloat(t2y))
        tileTwoView.transform = CGAffineTransformScale(tileTwoView.transform, CGFloat(scale2), CGFloat(scale2))
        tileTwoView.transform = CGAffineTransformRotate(tileTwoView.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        //tileThree
        var t3x = convertValue(offset, 0, 568, 8, 0)
        //y offset: -285 -> 0
        var t3y = convertValue(offset, 0, 568, -420, 0)
        
        var scale3 = convertValue(offset, 0, 568, 1.7, 1)
        
        var rotation3 = convertValue(offset, 0, 568, 10, 0)
        
        tileThreeView.transform = CGAffineTransformMakeTranslation(CGFloat(t3x), CGFloat(t3y))
        tileThreeView.transform = CGAffineTransformScale(tileThreeView.transform, CGFloat(scale3), CGFloat(scale3))
        tileThreeView.transform = CGAffineTransformRotate(tileThreeView.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        //tileFour
        var t4x = convertValue(offset, 0, 568, 85, 0)
        //y offset: -285 -> 0
        var t4y = convertValue(offset, 0, 568, -400, 0)
        
        var scale4 = convertValue(offset, 0, 568, 1.6, 1)
        
        var rotation4 = convertValue(offset, 0, 568, 10, 0)
        
        tileFourView.transform = CGAffineTransformMakeTranslation(CGFloat(t4x), CGFloat(t4y))
        tileFourView.transform = CGAffineTransformScale(tileFourView.transform, CGFloat(scale4), CGFloat(scale4))
        tileFourView.transform = CGAffineTransformRotate(tileFourView.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        //tileFive
        var t5x = convertValue(offset, 0, 568, -115, 0)
        //y offset: -285 -> 0
        var t5y = convertValue(offset, 0, 568, -510, 0)
        
        var scale5 = convertValue(offset, 0, 568, 1.65, 1)
        
        var rotation5 = convertValue(offset, 0, 568, 10, 0)
        
        tileFiveView.transform = CGAffineTransformMakeTranslation(CGFloat(t5x), CGFloat(t5y))
        tileFiveView.transform = CGAffineTransformScale(tileFiveView.transform, CGFloat(scale5), CGFloat(scale5))
        tileFiveView.transform = CGAffineTransformRotate(tileFiveView.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        //tileSix
        var t6x = convertValue(offset, 0, 568, -100, 0)
        //y offset: -285 -> 0
        var t6y = convertValue(offset, 0, 568, -490, 0)
        
        var scale6 = convertValue(offset, 0, 568, 1.65, 1)
        
        var rotation6 = convertValue(offset, 0, 568, -10, 0)
        
        tileSixView.transform = CGAffineTransformMakeTranslation(CGFloat(t6x), CGFloat(t6y))
        tileSixView.transform = CGAffineTransformScale(tileSixView.transform, CGFloat(scale6), CGFloat(scale6))
        tileSixView.transform = CGAffineTransformRotate(tileSixView.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
        println("Content offset: \(offset)")
        
    }
}

    
    /*func scrollViewWillBeginDragging(scrollView: UIScrollView)
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
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


