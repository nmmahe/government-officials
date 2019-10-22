//
//  ShowWikipediaGovernorView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI
import WebKit
import Foundation

private var websiteUrl = String()

class ShowWikipediaGovernorView: UIViewController{
    var webview: WKWebView!
    var urlString: String = "https://wikipedia.org"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let webUrl = websiteUrl as? String{
            urlString = webUrl
        }
        webview = WKWebView()
        if let url = URL(string: urlString){
            print(url)
            webview.load(URLRequest(url: url))
            view = webview
        }
    }
    
}

struct GovernorWikipediaIntegratedController:UIViewControllerRepresentable{
    var governor: Governor
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<GovernorWikipediaIntegratedController>) -> ShowWikipediaGovernorView {
        if let url = governor.wikiURL{
            websiteUrl = url
        }
        return ShowWikipediaGovernorView()
    }
    
    func updateUIViewController(_ uiViewController: ShowWikipediaGovernorView, context: UIViewControllerRepresentableContext<GovernorWikipediaIntegratedController>) {
        
    }
}

struct GovernorWikiView: View{
    var governor: Governor
    var body: some View {
        VStack{
            GovernorWikipediaIntegratedController(governor: governor)
        }
            
    }
}

struct GovernorWikiPreview: PreviewProvider {
    static var previews: some View {
        GovernorWikiView(governor: governorData[0])
    }
}

