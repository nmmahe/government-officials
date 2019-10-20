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

//struct ShowWikipediaView: View {
class ShowWikipediaView: UIViewController{
    var webview: WKWebView!
    //var president: President
    let urlString = "https://wikipedia.org"
  
    override func viewDidLoad() {
        super.viewDidLoad()
        webview = WKWebView()
        let urlTest = URL(string: "https://wikipedia.org")
        print(urlTest)
        if let url = URL(string: urlString){
            print(url)
            webview.load(URLRequest(url: url))
            view = webview
        }
        
        
    }
}

struct WikipediaIntegratedController:UIViewControllerRepresentable{
    func makeUIViewController(context: UIViewControllerRepresentableContext<WikipediaIntegratedController>) -> ShowWikipediaView {
        ShowWikipediaView()
    }
    
    func updateUIViewController(_ uiViewController: ShowWikipediaView, context: UIViewControllerRepresentableContext<WikipediaIntegratedController>) {
        
    }
}

struct RedSampleView: View{
    var body: some View {
            WikipediaIntegratedController()
    }
}

struct RedSamplePreview: PreviewProvider {
    static var previews: some View {
            RedSampleView()
    }
}
