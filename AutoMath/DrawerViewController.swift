//
//  DrawerViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/21.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//


import UIKit

class DrawerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //tabbar 作成
        let closeButton:UIImage =  UIImage(named:"tabbar2.png")!;
        
        let iv = UIImageView(image:closeButton);
        iv.frame = CGRectMake(0, 0, 75, self.view.frame.height);
        self.view.addSubview(iv);
        
        //アイコン 位置 縦
        var tate = (iv.frame.height/8)/2

        
        
        
        //tabbar button 作成
        let homebutton = UIButton()
        let formulabutton = UIButton()
        let starbutton = UIButton()
        let settingbutton = UIButton()
        let searchbutton = UIButton()
        let quizbutton = UIButton()
        
//        let viewDictionary = ["homebutton" : homebutton]
//        homebutton.setTranslatesAutoresizingMaskIntoConstraints(false)
    
        
        //homebutton
        homebutton.addTarget(self,
            action: "didTapCloseButton:",
            forControlEvents: .TouchUpInside
       )
        homebutton.frame = CGRectMake(0,0,150,iv.frame.height/8)
        
        homebutton.tag = 1
        
        homebutton.layer.position = CGPoint(x:0,y:tate)
        
        
        self.view.addSubview(homebutton)
        
        
        //formulabutton
        formulabutton.addTarget(self,
            action: "didTapformulabutton:",
            forControlEvents: .TouchUpInside
        )
        formulabutton.frame = CGRectMake(0,0,150,iv.frame.height/8)
        
        formulabutton.tag = 1
        
        formulabutton.layer.position = CGPoint(x:0,y:tate*3)
        
        
        self.view.addSubview(formulabutton)
        
        //quizbutton
        quizbutton.addTarget(self,
            action: "didTapquizbutton:",
            forControlEvents: .TouchUpInside
        )
        quizbutton.frame = CGRectMake(0,0,150,iv.frame.height/8)
        
        quizbutton.tag = 1
        
        quizbutton.layer.position = CGPoint(x:0,y:tate*5)
        
        self.view.addSubview(quizbutton)
        
        //searchbutton
        searchbutton.addTarget(self,
            action: "didTapCloseButton:",
            forControlEvents: .TouchUpInside
        )
        searchbutton.frame = CGRectMake(0,0,150,iv.frame.height/8)
        
        searchbutton.tag = 1
        
        searchbutton.layer.position = CGPoint(x:0,y:tate*7)
        
        self.view.addSubview(searchbutton)
        
        //starbutton
        starbutton.addTarget(self,
            action: "didTapCloseButton:",
            forControlEvents: .TouchUpInside
        )
        starbutton.frame = CGRectMake(0,0,150,iv.frame.height/8)
        
        starbutton.tag = 1
        
        starbutton.layer.position = CGPoint(x:0,y:tate*9)
        
        self.view.addSubview(starbutton)
        
        //settingbutton
        settingbutton.addTarget(self,
            action: "didTapCloseButton:",
            forControlEvents: .TouchUpInside
        )
        settingbutton.frame = CGRectMake(0,0,150,iv.frame.height/8)
        
        settingbutton.tag = 1
        
        settingbutton.layer.position = CGPoint(x:0,y:tate*11)
        
        self.view.addSubview(settingbutton)
        
        
        


      
        
        
//        homebutton.sizeToFit()
//        homeButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        

        
//        view.addConstraint(
//            NSLayoutConstraint(
//                item: homeButton,
//                attribute: .CenterX,
//                relatedBy: .Equal,
//                toItem: view,
//                attribute: .CenterX,
//                multiplier: 1,
//                constant: 0
//            )
//        )
//        view.addConstraint(
//            NSLayoutConstraint(
//                item: homeButton,
//                attribute: .CenterY,
//                relatedBy: .Equal,
//                toItem: view,
//                attribute: .CenterY,
//                multiplier: 1,
//                constant: 0
//            )
//        )
        
        
//        view.backgroundColor = UIColor.whiteColor()
    }
    
    func didTapCloseButton(sender: UIButton) {
        if let drawerController = parentViewController as? KYDrawerController {
            drawerController.setDrawerState(.Closed, animated: true)
        }
    }
    
    func didTapformulabutton(sender: UIButton) {
        if let drawerController = parentViewController as? KYDrawerController {
            drawerController.setDrawerState(.Closed, animated: true)
            // 遷移するViewを定義する.
            let mySecondViewController: UIViewController = SecondViewController()
            
            // アニメーションを設定する.
            mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
            
            // Viewの移動する.
            self.presentViewController(mySecondViewController, animated: true, completion: nil)
            
        }
    }
    
    func didTapquizbutton(sender: UIButton) {
        if let drawerController = parentViewController as? KYDrawerController {
            drawerController.setDrawerState(.Closed, animated: true)
            // 遷移するViewを定義する.
            let myThirdViewController: UIViewController = ThirdViewController()
            
            // アニメーションを設定する.
            myThirdViewController.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
            
            // Viewの移動する.
            self.presentViewController(myThirdViewController, animated: true, completion: nil)
            
        }
    }

}
