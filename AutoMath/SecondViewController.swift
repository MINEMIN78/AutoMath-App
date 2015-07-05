//
//  SecondViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/21.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIScrollViewDelegate {
    
    var window: UIWindow?
    
    var _pageControl: UIPageControl!
    var _scrollView: UIScrollView!
    var _displaySize:CGRect = UIScreen.mainScreen().bounds
    
    // デバイスのサイズ取得
    var _devPageValu:Float = Float()
    var _devViewValue:Float = Float()
    var _devViewValue2:Float = Float()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        

        
        //Navigation var
        let mainViewController = MainViewController()
        let drawerViewController = DrawerViewController()
        let drawerController     = KYDrawerController()
        
        drawerController.mainViewController = UINavigationController()
        
        
        drawerController.drawerViewController = drawerViewController
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = drawerController
        window?.makeKeyAndVisible()
        
        //test
        // デバイス毎のサイズを変数で取得する為のfunc
        self.disp()
        
        // ビューの縦、横のサイズを取得する.
        let width = self.view.frame.maxX, height = self.view.frame.maxY*2/3
        
        // ScrollViewを取得する.
        _scrollView = UIScrollView(frame: self.view.frame)
        
        // ページ数を定義する.
        let pageSize = 3
        
        // 縦方向と、横方向のスクロール状態のバーの表示・非表示
        _scrollView.showsHorizontalScrollIndicator = false
        _scrollView.showsVerticalScrollIndicator = false
        
        // ページングを許可する.
        _scrollView.pagingEnabled = true
        
        // ScrollViewのデリゲートを設定する.
        _scrollView.delegate = self
        
        // スクロールの画面サイズを指定する.
        _scrollView.contentSize = CGSizeMake(CGFloat(pageSize) * width, 0)
        
        // ScrollViewをViewに追加する.
        self.view.addSubview(_scrollView)
        
        self.view.sendSubviewToBack(_scrollView)
        
        //test
        // ページ数分ボタンを生成する.
        for var i = 0; i < pageSize; i++ {
            
            //問題配置
            var imageArray = ["formula1.png","formula2.png","formula3.png"]
            
            
            
            var image:UIImage? = UIImage(named:imageArray[i])!
            
            
            var imageView:UIImageView = UIImageView(image:image)
            imageView.frame = CGRectMake(CGFloat(i) * width + width/12 - CGFloat(_devViewValue), height/50 - CGFloat(_devViewValue2)+30, width, height*1.4)
            
            imageView.tag = 1
            
            imageView.contentMode = UIViewContentMode.ScaleAspectFit
            
            _scrollView.addSubview(imageView)
            
            self.view.sendSubviewToBack(_scrollView)
            
            
            
            // PageControlを作成する.
            _pageControl = UIPageControl(frame: CGRectMake(0, self.view.frame.maxY - CGFloat(_devPageValu), width, 50))
            
            // PageControlするページ数を設定する.
            _pageControl.numberOfPages = pageSize
            
            // 現在ページを設定する.
            _pageControl.currentPage = 0
            _pageControl.userInteractionEnabled = false
            
            // pageControlカラー
            // 全体の点の色
            _pageControl.pageIndicatorTintColor = UIColor.redColor()
            // 現在の点の色
            _pageControl.currentPageIndicatorTintColor = UIColor.whiteColor()
            
            self.view.addSubview(_pageControl)
        
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

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //test
    // スクロールした時
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        // スクロール数が1ページ分になったら時.
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            // ページの場所を切り替える.
            _pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
        }
    }

    
    
    func disp() {
        // デバイスの高さ取得
        var _devicesHeight = _displaySize.height
        
        if _devicesHeight == 568.0 {
            // iPhone5,5sの設定
            _devViewValue = 32.0
            _devViewValue2 = 40.0
            _devPageValu = 50.0
            
        } else if _devicesHeight == 667 {
            // iPhone6の設定
            _devViewValue = 38.0
            _devViewValue2 = 40.0
            _devPageValu = 50.0
            
        } else {
            // iPhone6 Plus
            _devViewValue = 42.0
            _devViewValue2 = 44.0
            _devPageValu = 60.0
        }
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
