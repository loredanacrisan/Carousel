//
//  IntroViewController.swift
//  Carousel
//
//  Created by Loredana Crisan on 9/19/14.
//  Copyright (c) 2014 Loredana Crisan. All rights reserved.
//

import UIKit



class IntroViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var IntroScrollView: UIScrollView!

    @IBOutlet weak var IntroTile6: UIImageView!
    @IBOutlet weak var IntroTile5: UIImageView!
    @IBOutlet weak var IntroTile4: UIImageView!
    @IBOutlet weak var IntroTile3: UIImageView!
    @IBOutlet weak var IntroTile2: UIImageView!
    @IBOutlet weak var IntroTile1: UIImageView!
    @IBOutlet weak var IntroImageView: UIImageView!
    
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }

    
    
    override func viewDidLoad() {
        

        
        
        
        IntroScrollView.contentSize = IntroImageView.frame.size
        IntroScrollView.delegate = self
        IntroScrollView.sendSubviewToBack(IntroImageView)
        
        
        
        
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        var offset = Float(IntroScrollView.contentOffset.y)
        


// transform tile1
        
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -50, r2Max: 0)
        
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        
        IntroTile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        IntroTile1.transform = CGAffineTransformScale(IntroTile1.transform, CGFloat(scale), CGFloat(scale))
        
        IntroTile1.transform = CGAffineTransformRotate(IntroTile1.transform, CGFloat(Double (rotation) * M_PI/180))

// transform tile2


        var tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -65, r2Max: 0)
        
        var ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -230, r2Max: 0)
        
        var scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        
        var rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        
        IntroTile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        
        IntroTile2.transform = CGAffineTransformScale(IntroTile2.transform, CGFloat(scale2), CGFloat(scale2))
        
        IntroTile2.transform = CGAffineTransformRotate(IntroTile2.transform, CGFloat(Double (rotation2) * M_PI/180))

// transform tile3


        var tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 66, r2Max: 0)
        
        var ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -315, r2Max: 0)
        
        var scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2
, r2Max: 1)
        
        var rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        
        IntroTile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        
        IntroTile3.transform = CGAffineTransformScale(IntroTile3.transform, CGFloat(scale3), CGFloat(scale3))
        
        IntroTile3.transform = CGAffineTransformRotate(IntroTile3.transform, CGFloat(Double (rotation3) * M_PI/180))


// transform tile4

        var tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        var ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        
        var scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2
, r2Max: 1)
        
        var rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        
        IntroTile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        
        IntroTile4.transform = CGAffineTransformScale(IntroTile4.transform, CGFloat(scale4), CGFloat(scale4))
        
        IntroTile4.transform = CGAffineTransformRotate(IntroTile4.transform, CGFloat(Double (rotation4) * M_PI/180))

// transform tile5

    var tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 100, r2Max: 0)
        
        var ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -380, r2Max: 0)
        
        var scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2
, r2Max: 1)
        
        var rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        
        IntroTile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        
        IntroTile5.transform = CGAffineTransformScale(IntroTile5.transform, CGFloat(scale5), CGFloat(scale5))
        
        IntroTile5.transform = CGAffineTransformRotate(IntroTile5.transform, CGFloat(Double (rotation5) * M_PI/180))


// transform tile6

    var tx6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        
        var ty6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -410, r2Max: 0)
        
        var scale6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 2
, r2Max: 1)
        
        var rotation6 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        
        IntroTile6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        
        IntroTile6.transform = CGAffineTransformScale(IntroTile6.transform, CGFloat(scale6), CGFloat(scale6))
        
        IntroTile6.transform = CGAffineTransformRotate(IntroTile6.transform, CGFloat(Double (rotation6) * M_PI/180))




    
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
