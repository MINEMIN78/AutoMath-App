//
//  quizViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/28.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //値受け渡し
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスの取得
        var message = appDelegate.message
        
        //問題配置
        if message == "1" {
            //UIImageに画像の名前を指定します
            let imgQ1 = UIImage(named: "1-1.png")
            let imgQ2 = UIImage(named: "1-2.png")
            let imgQ3 = UIImage(named: "1-3.png")
            
            //UIImageViewにUIIimageを追加
            let Q1 = UIImageView(image: imgQ1)
            let Q2 = UIImageView(image: imgQ2)
            let Q3 = UIImageView(image: imgQ3)
            
            //UIScrollViewを作成します
            let scrView = UIScrollView()
            
            //UIScrollViewの1ページ分のサイズ + 表示位置
            scrView.frame = CGRectMake(0, 50, self.view.frame.width, self.view.frame.height*2/3)
            
            //全体のサイズ
            scrView.contentSize = CGSizeMake(self.view.frame.width*3, self.view.frame.height*2/3)
            
            //UIImageViewのサイズと位置を決めます
            Q1.frame = CGRectMake(0, 10, self.view.frame.width, self.view.frame.height*2/3)
            Q2.frame = CGRectMake(self.view.frame.width, 10, self.view.frame.width, self.view.frame.height*2/3)
            Q3.frame = CGRectMake(self.view.frame.width*2, 10, self.view.frame.width, self.view.frame.height*2/3)
            
            //viewに追加します
            self.view.addSubview(scrView)
            
            //UIImageViewをScrollViewに追加します
            scrView.addSubview(Q1)
            scrView.addSubview(Q2)
            scrView.addSubview(Q3)
            
            // １ページ単位でスクロールさせる
            scrView.pagingEnabled = true
        }else if message == "2"{
            //UIImageに画像の名前を指定します
//            let imgQ1 = UIImage(named: "3-1.png")
            let imgQ2 = UIImage(named: "2-2.png")
            let imgQ3 = UIImage(named: "2-3.png")
            
            //UIImageViewにUIIimageを追加
//            let Q1 = UIImageView(image: imgQ1)
            let Q2 = UIImageView(image: imgQ2)
            let Q3 = UIImageView(image: imgQ3)
            
            //UIScrollViewを作成します
            let scrView = UIScrollView()
            
            //UIScrollViewの1ページ分のサイズ + 表示位置
            scrView.frame = CGRectMake(0, 50, self.view.frame.width, self.view.frame.height*2/3)
            
            //全体のサイズ
            scrView.contentSize = CGSizeMake(self.view.frame.width*3, self.view.frame.height*2/3)
            
            //UIImageViewのサイズと位置を決めます
//            Q1.frame = CGRectMake(0, 10, self.view.frame.width, self.view.frame.height*2/3)
            Q2.frame = CGRectMake(self.view.frame.width, 10, self.view.frame.width, self.view.frame.height*2/3)
            Q3.frame = CGRectMake(self.view.frame.width*2, 10, self.view.frame.width, self.view.frame.height*2/3)
            
            //viewに追加します
            self.view.addSubview(scrView)
            
            //UIImageViewをScrollViewに追加します
//            scrView.addSubview(Q1)
            scrView.addSubview(Q2)
            scrView.addSubview(Q3)
            
            // １ページ単位でスクロールさせる
            scrView.pagingEnabled = true
        }else if message == "3"{
            //UIImageに画像の名前を指定します
            let imgQ1 = UIImage(named: "3-1.png")
            let imgQ2 = UIImage(named: "3-2.png")
            let imgQ3 = UIImage(named: "3-3.png")
            
            //UIImageViewにUIIimageを追加
            let Q1 = UIImageView(image: imgQ1)
            let Q2 = UIImageView(image: imgQ2)
            let Q3 = UIImageView(image: imgQ3)
            
            //UIScrollViewを作成します
            let scrView = UIScrollView()
            
            //UIScrollViewの1ページ分のサイズ + 表示位置
            scrView.frame = CGRectMake(0, 50, self.view.frame.width, self.view.frame.height*2/3)
            
            //全体のサイズ
            scrView.contentSize = CGSizeMake(self.view.frame.width*3, self.view.frame.height*2/3)
            
            //UIImageViewのサイズと位置を決めます
            Q1.frame = CGRectMake(0, 10, self.view.frame.width, self.view.frame.height*2/3)
            Q2.frame = CGRectMake(self.view.frame.width, 10, self.view.frame.width, self.view.frame.height*2/3)
            Q3.frame = CGRectMake(self.view.frame.width*2, 10, self.view.frame.width, self.view.frame.height*2/3)
            
            //viewに追加します
            self.view.addSubview(scrView)
            
            //UIImageViewをScrollViewに追加します
            scrView.addSubview(Q1)
            scrView.addSubview(Q2)
            scrView.addSubview(Q3)
            
            // １ページ単位でスクロールさせる
            scrView.pagingEnabled = true
            
            

        }
        
        //グラデーション start
        
        //グラデーションの開始色
        let topColor = UIColor(red:0.93, green:0.93, blue:0.94, alpha:1.0)
        //グラデーションの開始色
        let bottomColor = UIColor(red:0.82, green:0.95, blue:1.00, alpha:1.0)
        
        
        //グラデーションの色を配列で管理
        let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
        
        //グラデーションレイヤーを作成
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        //グラデーションの色をレイヤーに割り当てる
        gradientLayer.colors = gradientColors
        //グラデーションレイヤーをスクリーンサイズにする
        gradientLayer.frame = self.view.bounds
        
        //グラデーションレイヤーをビューの一番下に配置
        self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        
        //グラデーション end
        



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
