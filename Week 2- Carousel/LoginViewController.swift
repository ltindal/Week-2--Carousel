//
//  LoginViewController.swift
//  Week 2- Carousel
//
//  Created by Lauren Tindal on 10/19/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
            scrollView.delegate = self
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
            
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
                // Any code you put in here will be called when the keyboard is about to hide
            }

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressLogin(_ sender: AnyObject) {
        self.loginIndicator.startAnimating()
    
        // Check that email and pw are not empty.
        guard !emailField.text!.isEmpty else {
            showAlert(title: "Email Required", message: "Please enter your email.")
            return
        }
        guard !passwordField.text!.isEmpty else {
            showAlert(title: "Password Required", message: "Please enter your password.")
            return
        }
        // Check that email and password are correct.
        guard emailField.text == "correct" && passwordField.text == "123" else {
            showAlert(title: "Password/Email Incorrect", message: "Please try again.")
            return
        }
        // Segue to the app.
        delay(2, closure: {
            self.loginIndicator.stopAnimating()
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        })
    }

    private func showAlert(title: String, message: String) {
        self.loginIndicator.stopAnimating()
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
        })
        alertController.addAction(okAction)
        self.present(alertController, animated:true)
    }
}
