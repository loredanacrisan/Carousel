//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Loredana Crisan on 9/21/14.
//  Copyright (c) 2014 Loredana Crisan. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!

    @IBOutlet weak var welcomeImage1: UIImageView!
    
    @IBOutlet weak var spinButton: UIButton!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        print(scrollView.contentSize)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     // Set page dot
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        
        
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        
        self.pageControl.currentPage = page
        
        if (page==3){
        UIView.animateWithDuration(0.3){
            self.spinButton.alpha = 1
            }
        }
        else {
            spinButton.alpha = 0
        }
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
