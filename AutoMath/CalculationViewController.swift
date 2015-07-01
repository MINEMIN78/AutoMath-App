//
//  CalculationViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/07/02.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController, UIWebViewDelegate {

    private var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // WebViewを生成.
        myWebView = UIWebView()
        
        // Delegateを設定する.
        myWebView.delegate = self
        
        // WebViewのサイズを設定する.
        myWebView.frame = self.view.bounds
        
        // Viewに追加する.
        self.view.addSubview(myWebView)
        
        // URLを設定する.
        let url: NSURL = NSURL(string: "https://www.google.co.jp/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&uact=8&ved=0CCoQFjAB&url=http%3A%2F%2Fja.numberempire.com%2Ffactoringcalculator.php&ei=JhiUVeGdPJOB8QWQ8LjgBQ&usg=AFQjCNE-BtrzwvOw9fNsJNg3t9rI5-rJTA&sig2=ytmWowLSIQBHT3Zz9pkh6A")!
        
        // リクエストを作成する.
        let request: NSURLRequest = NSURLRequest(URL: url)
        
        // リクエストを実行する.
        myWebView.loadRequest(request)
    }
    
    /*
    Pageがすべて読み込み終わった時呼ばれるデリゲートメソッド.
    */
    func webViewDidFinishLoad(webView: UIWebView) {
        println("webViewDidFinishLoad")
    }
    
    /*
    Pageがloadされ始めた時、呼ばれるデリゲートメソッド.
    */
    func webViewDidStartLoad(webView: UIWebView) {
        println("webViewDidStartLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
