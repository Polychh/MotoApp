//
//  YotubeView.swift
//  MotoControll
//
//  Created by Polina on 08.12.2023.
//
//
//import SwiftUI
//import WebKit
//
//struct YouTubeView: UIViewRepresentable {
//    let videoId: String
//    func makeUIView(context: Context) ->  WKWebView {
//        let webView = WKWebView()
//        //        webView.navigationDelegate = context.coordinator
//        //        webView.allowsBackForwardNavigationGestures = true
//        //        webView.allowsLinkPreview = true
//        return webView
//    }
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        guard let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
//        uiView.scrollView.isScrollEnabled = false
//        uiView.load(URLRequest(url: demoURL))
//    }
//}


import SwiftUI
import WebKit


struct YouTubeView: UIViewRepresentable {
    let videoId: String
    @Binding var isLoading: Bool
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func makeUIView(context: Context) -> WKWebView  {
        let wkwebView = WKWebView()
        wkwebView.navigationDelegate = context.coordinator
        if let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)"){
            wkwebView.load(URLRequest(url: demoURL))
        }
        return wkwebView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: YouTubeView
        init(_ parent: YouTubeView) {
            self.parent = parent
        }
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            parent.isLoading = true
            print("Done1")
        }
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            parent.isLoading = false
            print("Done2")
        }
    }
}
