//
//  CreateDropboxViewController.swift
//  Week 2- Carousel
//
//  Created by Lauren Tindal on 10/24/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class CreateDropboxViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var emailPasswordContainer: UIView!
    
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var checkBoxButton: UIButton!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -190
        
        // Set the scroll view content size
        scrollView.contentSize = scrollView.frame.size
        // Set the content insets
        scrollView.contentInset.bottom = 100
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            // Scroll the scrollview up
            self.scrollView.contentOffset.y = self.scrollView.contentInset.bottom
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            self.buttonParentView.frame.origin.y = self.buttonInitialY
            
            self.scrollView.contentOffset.y = self.scrollView.contentInset.bottom - 100

        }
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func didPressBack(_ sender: AnyObject) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func checkBoxButton(_ sender: AnyObject) {
        checkBoxButton.isSelected = !checkBoxButton.isSelected
    }
    
    
}
