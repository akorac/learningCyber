//
//  WebView.swift
//  CyberStudyApp
//
//  Created by Amar Korac on 3/26/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> some UIView {
        
        let webView = WKWebView()
        
        // Create the request and load it
        let request = URLRequest(url: url)
        webView.load(request)
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        return
    }
}
