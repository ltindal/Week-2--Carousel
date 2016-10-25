//
//  UIWebViewController.swift
//  Week 2- Carousel
//
//  Created by Lauren Tindal on 10/24/16.
//  Copyright © 2016 Lauren Tindal. All rights reserved.
//

import UIKit

class UIWebViewController: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    let url = "https://www.dropbox.com/terms?mobile=1"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let requestURL = URL(string:url)
        // Place the URL in a URL Request.
        let request = URLRequest(url: requestURL! as URL)
        // Load Request into WebView.
        webView.loadRequest(request)
    }

    
    @IBAction func didPressDone(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

}
