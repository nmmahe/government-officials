//
//  ShowWikipediaView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/19/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI
import WebKit
import Foundation

private var websiteUrl = String()

class ShowWikipediaView: UIViewController{
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

struct WikipediaIntegratedController:UIViewControllerRepresentable{
    var president: President
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<WikipediaIntegratedController>) -> ShowWikipediaView {
        if let url = president.wikidata{
            websiteUrl = url
        }
        return ShowWikipediaView()
    }
    
    func updateUIViewController(_ uiViewController: ShowWikipediaView, context: UIViewControllerRepresentableContext<WikipediaIntegratedController>) {
        
    }
}

struct RedSampleView: View{
    var president: President
    var body: some View {
        VStack{
            WikipediaIntegratedController(president: president)
        }
            
    }
}

struct RedSamplePreview: PreviewProvider {
    static var previews: some View {
        RedSampleView(president: presidentData[0])
    }
}
