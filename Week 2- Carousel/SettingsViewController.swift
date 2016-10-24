//
//  SettingsViewController.swift
//  Week 2- Carousel
//
//  Created by Lauren Tindal on 10/23/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = CGSize(width: 320, height: 695)
    }
    
    
    @IBAction func closeSettings(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    

}
