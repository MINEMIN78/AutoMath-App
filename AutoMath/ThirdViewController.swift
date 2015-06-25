//
//  ThirdViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/23.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    

    
//    let ichiimg = UIImage(named: "mondai1.png") as UIImage!
//    let niimg = UIImage(named: "mondai2.png") as UIImage!
//    let sanimg = UIImage(named: "mondai3.png") as UIImage!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
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
        
        
        
        //中１
        //back image
        let back1 = UIImage(named:"mondai1.png")

        let mondai1image = UIImageView(image:back1)
        
        mondai1image.frame = CGRectMake(0, 0, self.view.frame.width*0.95, self.view.frame.height/4)
        mondai1image.layer.position = CGPoint(x: self.view.frame.width/2, y:self.view.frame.height/4-20)
        
        self.view.addSubview(mondai1image)
        
        
        //button
        
        let ichiimg = UIImage(named:"1th4.png")
        let ichibutton = UIButton()

        
        ichibutton.tag = 1
        ichibutton.frame = CGRectMake(0, 0, self.view.frame.width*2/5, self.view.frame.width*2/5)
        ichibutton.layer.position = CGPoint(x: self.view.frame.width/4, y:self.view.frame.height/4-20)
        ichibutton.setImage(ichiimg, forState: .Normal)
        ichibutton.addTarget(self, action: "btn_click:", forControlEvents:.TouchUpInside)
        
        self.view.addSubview(ichibutton)
        
        //中２
        
        //back image
        let back2 = UIImage(named:"mondai2.png")
        
        let mondai2image = UIImageView(image:back2)
        
        mondai2image.frame = CGRectMake(0, 0, self.view.frame.width*0.95, self.view.frame.height/4)
        mondai2image.layer.position = CGPoint(x: self.view.frame.width/2, y:self.view.frame.height/2)
        
        self.view.addSubview(mondai2image)
        
        
        //button
        let niimg = UIImage(named:"2th4.png");
        let nibutton = UIButton()
        
        nibutton.tag = 2
        nibutton.frame = CGRectMake(0, 0, self.view.frame.width*2/5, self.view.frame.width*2/5)
        nibutton.layer.position = CGPoint(x: self.view.frame.width/4, y:self.view.frame.height/2)
        nibutton.setImage(niimg, forState: .Normal)
        nibutton.addTarget(self, action: "btn_click:", forControlEvents:.TouchUpInside)
        
        self.view.addSubview(nibutton)
        
        
        //中３
        //back image
        let back3 = UIImage(named:"mondai3.png")
        
        let mondai3image = UIImageView(image:back3)
        
        mondai3image.frame = CGRectMake(0, 0, self.view.frame.width*0.95, self.view.frame.height/4)
        mondai3image.layer.position = CGPoint(x: self.view.frame.width/2, y:self.view.frame.height*3/4+20)
        
        self.view.addSubview(mondai3image)
        
        
        //button
        
        let sanimg = UIImage(named:"3th4.png");
        let sannenbutton = UIButton()
        sannenbutton.tag = 3
        sannenbutton.frame = CGRectMake(0, 0, self.view.frame.width*2/5, self.view.frame.width*2/5)
        sannenbutton.layer.position = CGPoint(x: self.view.frame.width/4, y:self.view.frame.height*3/4+20)
        sannenbutton.setImage(sanimg, forState: .Normal)
        sannenbutton.addTarget(self, action: "btn_click:", forControlEvents:.TouchUpInside)
        self.view.addSubview(sannenbutton)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func btn_click(sender: UIButton){
        println("button is clcked!")
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
