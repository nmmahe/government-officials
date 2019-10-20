//
//  WebView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/20/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import Foundation
import WebKit

class WebViewController: UIViewController{
    
    weak var webView: WKWebView!
    
    let urlString = "https://wikipedia.org"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: urlString){
            webView.load(URLRequest(url: url))
        }
        else{
            webView.loadHTMLString("<h1>Unable to connect to www.wikipedia.org</h1>", baseURL: nil)
        }
        
    }
    
    
    
}
