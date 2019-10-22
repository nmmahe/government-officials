//
//  ShowWikipediaSenatorView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI
import WebKit
import Foundation

private var websiteUrl = String()

class ShowWikipediaPresidentView: UIViewController{
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

struct PresidentWikipediaIntegratedController:UIViewControllerRepresentable{
    var president: President
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<PresidentWikipediaIntegratedController>) -> ShowWikipediaPresidentView {
        if let url = president.wikidata{
            websiteUrl = url
        }
        return ShowWikipediaPresidentView()
    }
    
    func updateUIViewController(_ uiViewController: ShowWikipediaPresidentView, context: UIViewControllerRepresentableContext<PresidentWikipediaIntegratedController>) {
        
    }
}

struct PresidentWikiView: View{
    var president: President
    var body: some View {
        VStack{
            PresidentWikipediaIntegratedController(president: president)
        }
            
    }
}

struct PresidentWikiPreview: PreviewProvider {
    static var previews: some View {
        PresidentWikiView(president: presidentData[0])
    }
}
