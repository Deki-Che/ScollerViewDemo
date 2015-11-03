//
//  ViewController.swift
//  ScollerView
//
//  Created by Deki on 15/11/3.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView1: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView1.backgroundColor = UIColor.grayColor()
        scrollView1.contentSize = CGSize(width: 320*4, height: 568)
       // scrollView1.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        //scrollView1.contentOffset = CGPoint(x: 10, y: 10)
        scrollView1.indicatorStyle = .White
        scrollView1.pagingEnabled = true
        scrollView1.delegate = self
        
        let aView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        aView.backgroundColor = UIColor.yellowColor()
        scrollView1.addSubview(aView)
        
        let bView = UIView(frame: CGRect(x: 320, y: 0, width: 320, height: 568))
        bView.backgroundColor = UIColor.greenColor()
        scrollView1.addSubview(bView)
        
        let cView = UIView(frame: CGRect(x: 320*2, y: 0, width: 320, height: 568))
        cView.backgroundColor = UIColor.whiteColor()
        scrollView1.addSubview(cView)
        
        let dView = UIView(frame: CGRect(x: 320*3, y: 0, width: 320, height: 568))
        dView.backgroundColor = UIColor.blackColor()
        scrollView1.addSubview(dView)
        
        pageControl.addTarget(self, action: "changeValue", forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func changeValue() {
        let cuPage = pageControl.currentPage
        scrollView1.scrollRectToVisible(CGRect(x: cuPage * 320, y: 0, width: 320, height: 568), animated: true)
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("屏幕滚动了！")
        // 计算偏移量， 
        let currentPage = scrollView1.contentOffset.x/320
        //
        pageControl.currentPage = Int(currentPage)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

