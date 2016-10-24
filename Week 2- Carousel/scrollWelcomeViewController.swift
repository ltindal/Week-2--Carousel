//
//  scrollWelcomeViewController.swift
//  Week 2- Carousel
//
//  Created by Lauren Tindal on 10/22/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class scrollWelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var takeCarouselButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1260, height: 485)
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        pageControl.numberOfPages = 4
        
        let buttonPage : CGFloat = CGFloat(round(scrollView.contentOffset.x / (scrollView.bounds.size.width + 1230)))
        
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.takeCarouselButton.alpha = CGFloat(buttonPage)
        }
        
        if page == 3 {
            pageControl.isHidden = true
        }
    }


    

}
