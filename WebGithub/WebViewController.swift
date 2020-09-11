//
//  WebViewController.swift
//  WebGithub
//
//  Created by sindija.dzintare on 11/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    var passedValue = ""

    override func loadView() {
        self.title = "WebView"
        
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
let url = URL(string: passedValue)
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true
    }

}
