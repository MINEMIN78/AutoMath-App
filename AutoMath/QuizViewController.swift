//
//  quizViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/28.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController, UIScrollViewDelegate {
    
    var _pageControl: UIPageControl!
    var _scrollView: UIScrollView!
    var _displaySize:CGRect = UIScreen.mainScreen().bounds
    
    // デバイスのサイズ取得
    var _devPageValu:Float = Float()
    var _devViewValue:Float = Float()
    var _devViewValue2:Float = Float()
    
    @IBOutlet weak var _barButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        

        //test
        // デバイス毎のサイズを変数で取得する為のfunc
        self.disp()
        
        // ビューの縦、横のサイズを取得する.
        let width = self.view.frame.maxX, height = self.view.frame.maxY*2/3
        
        // ScrollViewを取得する.
        _scrollView = UIScrollView(frame: self.view.frame)
        
        // ページ数を定義する.
        let pageSize = 4
        
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
        
        
        //値受け渡し
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスの取得
        var message = appDelegate.message
        
        //問題配置
        if message == "1" {

            //test
            // ページ数分ボタンを生成する.
            for var i = 0; i < pageSize; i++ {
                
                var imageArray = ["1-1.png","1-2.png","1-3.png","1-4.png"]
                
                var image:UIImage? = UIImage(named:imageArray[i])!
                var imageView:UIImageView = UIImageView(image:image)
                imageView.frame = CGRectMake(CGFloat(i) * width + width/12 - CGFloat(_devViewValue), height/100 - CGFloat(_devViewValue2), width, height*1.5)

                imageView.contentMode = UIViewContentMode.ScaleAspectFit
                
                _scrollView.addSubview(imageView)
            }
            
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
            
            
        }else if message == "2"{
            //test
            // ページ数分ボタンを生成する.
            for var i = 0; i < pageSize; i++ {
                
                var imageArray = ["3-1.png","2-2.png","2-3.png","1-4.png"]
                
                var image:UIImage? = UIImage(named:imageArray[i])!
                var imageView:UIImageView = UIImageView(image:image)
                imageView.frame = CGRectMake(CGFloat(i) * width + width/12 - CGFloat(_devViewValue), height/100 - CGFloat(_devViewValue2), width, height*1.5)
                
                
                
                
                imageView.contentMode = UIViewContentMode.ScaleAspectFit
                
                _scrollView.addSubview(imageView)
            }
            
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
            
        }else if message == "3"{
            //test
            // ページ数分ボタンを生成する.
            for var i = 0; i < pageSize; i++ {
                
                var imageArray = ["3-1.png","3-2.png","3-3.png","1-4.png"]
                
                var image:UIImage? = UIImage(named:imageArray[i])!
                var imageView:UIImageView = UIImageView(image:image)
                imageView.frame = CGRectMake(CGFloat(i) * width + width/12 - CGFloat(_devViewValue), height/100 - CGFloat(_devViewValue2), width, height*1.5)
                
                
                
                
                imageView.contentMode = UIViewContentMode.ScaleAspectFit
                
                _scrollView.addSubview(imageView)
            }
            
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


        // Do any additional setup after loading the view.
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
    
    
    
    //
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
