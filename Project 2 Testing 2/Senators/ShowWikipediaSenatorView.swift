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

class ShowWikipediaSenatorView: UIViewController{
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

struct SenatorWikipediaIntegratedController:UIViewControllerRepresentable{
    var senator: Senator
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SenatorWikipediaIntegratedController>) -> ShowWikipediaSenatorView {
        if let url = senator.wikidata{
            websiteUrl = url
        }
        return ShowWikipediaSenatorView()
    }
    
    func updateUIViewController(_ uiViewController: ShowWikipediaSenatorView, context: UIViewControllerRepresentableContext<SenatorWikipediaIntegratedController>) {
        
    }
}

struct SenatorWikiView: View{
    var senator: Senator
    var body: some View {
        VStack{
            SenatorWikipediaIntegratedController(senator: senator)
        }
            
    }
}

struct SenatorWikiPreview: PreviewProvider {
    static var previews: some View {
        SenatorWikiView(senator: senatorData[0])
    }
}
