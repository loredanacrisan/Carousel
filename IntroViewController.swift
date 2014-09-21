//
//  IntroViewController.swift
//  Carousel
//
//  Created by Loredana Crisan on 9/19/14.
//  Copyright (c) 2014 Loredana Crisan. All rights reserved.
//

import UIKit



class IntroViewController: UIViewController {
    @IBOutlet weak var IntroScrollView: UIScrollView!

    @IBOutlet weak var IntroTile6: UIImageView!
    @IBOutlet weak var IntroTile5: UIImageView!
    @IBOutlet weak var IntroTile4: UIImageView!
    @IBOutlet weak var IntroTile3: UIImageView!
    @IBOutlet weak var IntroTile2: UIImageView!
    @IBOutlet weak var IntroTile1: UIImageView!
    @IBOutlet weak var IntroImageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        IntroTile1.transform = CGAffineTransformMakeRotation(CGFloat(345*M_PI)/180)
        
         IntroTile2.transform = CGAffineTransformMakeRotation(CGFloat(10*M_PI)/180)
        
         IntroTile3.transform = CGAffineTransformMakeRotation(CGFloat(350*M_PI)/180)
        
          IntroTile4.transform = CGAffineTransformMakeRotation(CGFloat(5*M_PI)/180)
        
         IntroTile5.transform = CGAffineTransformMakeRotation(CGFloat(340*M_PI)/180)
        
            IntroTile6.transform = CGAffineTransformMakeRotation(CGFloat(8*M_PI)/180)
        
        
        
        IntroScrollView.contentSize = IntroImageView.frame.size
        
        println(IntroImageView.frame.size)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
