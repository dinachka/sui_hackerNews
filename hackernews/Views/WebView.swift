//
//  WebView.swift
//  hackernews
//
//  Created by Дина Черных on 01.03.23.
//

import Foundation
import WebKit
import SwiftUI

    struct WebView: UIViewRepresentable {
        
        let urlString: String?
        
        func makeUIView(context: Context) -> WKWebView {
            return WKWebView()
        }
        
        func updateUIView(_ uiView: WKWebView, context: Context) {
            if let safeString = urlString {
                if let urlString = URL(string: safeString) {
                    let request = URLRequest(url: urlString)
                    uiView.load(request)
                }
            }
        }
    }
