//
//  SecondViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/21.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    



    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        
        

        // Do any additional setup after loading the view.
        

        
        
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
        
        
        //scroll view start
        //UIImageに画像の名前を指定します
        let img1 = UIImage(named:"formula1.png");
        let img2 = UIImage(named:"formula1.png");
        let img3 = UIImage(named:"formula1.png");
        
        //UIImageViewにUIIimageを追加
        let imageView1 = UIImageView(image:img1)
        let imageView2 = UIImageView(image:img2)
        let imageView3 = UIImageView(image:img3)
        
        //UIScrollViewを作成します
        let scrView = UIScrollView()
        
        //UIScrollViewの1ページ分のサイズ + 表示位置
        scrView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        
        //全体のサイズ
        scrView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height*3)
        
        //UIImageViewのサイズと位置を決めます
        imageView1.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        imageView2.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)
        imageView3.frame = CGRectMake(0, self.view.frame.size.height*2, self.view.frame.size.width, self.view.frame.size.height)
        
        //viewに追加します
        self.view.addSubview(scrView)
        
        //UIImageViewをScrollViewに追加します
        scrView.addSubview(imageView1)
        scrView.addSubview(imageView2)
        scrView.addSubview(imageView3)
        
        // １ページ単位でスクロールさせる
//        scrView.pagingEnabled = true
        
        //scroll view end
        
        


        
        
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
