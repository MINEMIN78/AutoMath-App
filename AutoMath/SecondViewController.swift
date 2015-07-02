//
//  SecondViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/21.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var window: UIWindow?
    
//    private let formula1: NSArray = ["f-parts1.png","f-parts2.png","f-parts3.png","f-parts4.png"]
//    private let formula2: NSArray = ["f-parts5.png","f-parts6.png","f-parts7.png","f-parts8.png"]
    
    
    private let mySections: NSArray = ["中学1年","中学2年","中学3年"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        

        
//        //Navigation var
//        let mainViewController = MainViewController()
//        let drawerViewController = DrawerViewController()
//        let drawerController     = KYDrawerController()
//        
//        drawerController.mainViewController = UINavigationController()
//        
//        
//        drawerController.drawerViewController = drawerViewController
//        
//        window = UIWindow(frame: UIScreen.mainScreen().bounds)
//        window?.rootViewController = drawerController
//        window?.makeKeyAndVisible()
        
        
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
        let for1 = UIImage(named: "f-parts1.png")
        let for2 = UIImage(named: "f-parts2.png")
        let for3 = UIImage(named: "f-parts3.png")
        let for4 = UIImage(named: "f-parts4.png")
        let for5 = UIImage(named: "f-parts5.png")

        
        //formulabutton
        let f1button = UIButton()
        let f2button = UIButton()
        let f3button = UIButton()
        let f4button = UIButton()
        let f5button = UIButton()
        
        //f1
            f1button.tag = 1
            f1button.frame = CGRectMake(0,0,self.view.frame.width,self.view.frame.height/11)
            f1button.layer.position = CGPoint(x:self.view.frame.width/2,y:self.view.frame.height*2/11)
        
        //f2
        
        //f3
        
        //f4
        
        //f5
        
        


        
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
