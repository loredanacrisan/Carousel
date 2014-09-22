//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Loredana Crisan on 9/21/14.
//  Copyright (c) 2014 Loredana Crisan. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!

    @IBOutlet weak var welcomeImage1: UIImageView!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        print(scrollView.contentSize)

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
