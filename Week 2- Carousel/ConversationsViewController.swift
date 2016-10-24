//
//  ConversationsViewController.swift
//  Week 2- Carousel
//
//  Created by Lauren Tindal on 10/23/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
