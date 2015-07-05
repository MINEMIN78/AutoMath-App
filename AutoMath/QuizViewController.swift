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
    
    var judge = Int?()//問題と解答の判定

    
    @IBOutlet weak var _barButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        //Navigation bar 作成
        // BarButtonItemを作成する.
        let answer = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Bookmarks, target: self, action: "Answer:")
        let favorite = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Organize, target: self, action: "")
        
        // Barの右に配置するボタンを配列に格納する.
        let myRightButtons: NSArray = [answer, favorite]
        
        // NavigationBarを取得する.
        self.navigationController?.navigationBar
        
        // NavigationBarの表示する.
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
        // NavigationItemの取得する.
        self.navigationItem
        
        // Barの右側に複数配置する.
        self.navigationItem.setRightBarButtonItems(myRightButtons as [AnyObject], animated: true)
        
        

        

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
        
        self.view.sendSubviewToBack(_scrollView)
        
        
        //値受け渡し
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスの取得
        var message = appDelegate.message
        
        
        

        
        

            //test
            // ページ数分ボタンを生成する.
            for var i = 0; i < pageSize; i++ {
                
                
                self.navigationItem.title = "問題"//navigationbar title
                
                //問題配置
                var imageArray = [""]
                
                if message == "1" {
                    imageArray = ["1-1.png","1-2.png","1-3.png","1-4.png"]
                }else if message == "2" {
                    imageArray = ["2-1.png","2-2.png","2-3.png","2-4.png"]
                }else if message == "3" {
                    imageArray = ["3-1.png","3-2.png","3-3.png","3-4.png"]
                }

                var image:UIImage? = UIImage(named:imageArray[i])!

                
                var imageView:UIImageView = UIImageView(image:image)
                imageView.frame = CGRectMake(CGFloat(i) * width + width/12 - CGFloat(_devViewValue), height/100 - CGFloat(_devViewValue2), width, height*1.5)
                
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
            _pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
            
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
    BarButtonイベント
    */
    internal func Answer(sender: UIButton){
        if judge == 0{
            judge = 1
        }else{
            judge = 0
        }

        let pageSize = 4

        for var i = 0; i < pageSize; i++ {
            
            var delview = self.view.viewWithTag(1)

            delview?.removeFromSuperview()
            
            // ビューの縦、横のサイズを取得する.
            let width = self.view.frame.maxX, height = self.view.frame.maxY*2/3
            
            //値受け渡し
            var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスの取得
            var message = appDelegate.message

            var imageArray = [""]

            
            if judge == 0{
                self.navigationItem.title = "解答"//navigationbar title
                if message == "1" {
                    imageArray = ["1-1-A.png","1-2-A.png","1-3-A.png","1-4-A.png"]
                }else if message == "2" {
                    imageArray = ["2-1-A.png","2-2-A.png","2-3-A.png","2-4-A.png"]
                }else if message == "3" {
                    imageArray = ["3-1-A.png","3-2-A.png","3-3-A.png","3-4-A.png"]
                }
                
            }else if judge == 1{
                self.navigationItem.title = "問題"//navigationbar title
                if message == "1" {
                    imageArray = ["1-1.png","1-2.png","1-3.png","1-4.png"]
                }else if message == "2" {
                    imageArray = ["2-1.png","2-2.png","2-3.png","2-4.png"]
                }else if message == "3" {
                    imageArray = ["3-1.png","3-2.png","3-3.png","3-4.png"]
                }
                
            }
            
            var image:UIImage? = UIImage(named:imageArray[i])!

            var imageView:UIImageView = UIImageView(image:image)
            imageView.frame = CGRectMake(CGFloat(i) * width + width/12 - CGFloat(_devViewValue), height/100 - CGFloat(_devViewValue2), width, height*1.5)
            
            imageView.contentMode = UIViewContentMode.ScaleAspectFit
            
            imageView.tag = 1
            
            _scrollView.addSubview(imageView)
            
            
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
