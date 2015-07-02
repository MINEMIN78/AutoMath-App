//
//  TwitterAPI.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/07/03.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import Fabric
import TwitterKit
import Foundation
import UIKit


class TwitterAPI: UIViewController {
    
    class func search(params: [NSObject : AnyObject]!, tweets: [TWTRTweet]->(), error: (NSError) -> ()) {
        self.callAPI("/search/tweets.json", parameters: params, completion: {
            response, data, err in
            if err == nil {
                var jsonError: NSError?
                let json: AnyObject? =  NSJSONSerialization.JSONObjectWithData(data!,
                    options: nil,
                    error: &jsonError)
                if let top = json as? NSDictionary {
                    var list: [TWTRTweet] = []
                    if let statuses = top["statuses"] as? NSArray {
                        list = URLTweet.tweetsWithJSONArray(statuses) as [TWTRTweet]
                    }
                    tweets(list)
                }
            } else {
                error(err!)
            }
        })
    }
    
    class func callAPI(path: String, parameters: [NSObject : AnyObject]!, completion: TWTRNetworkCompletion!){
        self._callAPI(path, method: "GET", parameters: parameters, completion: completion)
    }
    
    class func _callAPI(path: String, method: String, parameters: [NSObject : AnyObject]!, completion: TWTRNetworkCompletion!){
        let api = TwitterAPI()
        var clientError: NSError?
        let endpoint = api.baseURL + api.version + path
        let request = Twitter.sharedInstance().APIClient.URLRequestWithMethod(method, URL: endpoint, parameters: parameters, error: &clientError)
        if request != nil {
            Twitter.sharedInstance().APIClient.sendTwitterRequest(request, completion: completion)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
