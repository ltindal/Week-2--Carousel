//
//  CarouselViewController.swift
//  Week 2- Carousel
//
//  Created by Lauren Tindal on 10/23/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class CarouselViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 320, height: 2660)
        
        // Do any additional setup after loading the view.
    }

    

}
