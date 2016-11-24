//
//  HomePageViewController.swift
//  medicineUnit
//
//  Created by Geo on 16/11/24.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

let screenWidth =  UIScreen.main.bounds.size.width

class HomePageViewController: MedicineBaseViewController, HomePageSlideAdDelegate {
    var slideAd : HomePageSlideAd!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slideAd = HomePageSlideAd()
        slideAd.delegate = self
        slideAd.isPageControl = true
        self.addChildViewController(slideAd)
        self.view.addSubview(slideAd.view)
        slideAd.view.frame = CGRect(x:10, y:50, width:screenWidth-20, height:260);
        let tap = UITapGestureRecognizer(target: self, action: Selector(("handleTapAction:")))
        slideAd.view.addGestureRecognizer(tap)
    }
    
    func backDataSourceArray() -> NSMutableArray {
        return ["http://img0.bdstatic.com/img/image/shouye/sheying1124.jpg","http://img0.bdstatic.com/img/image/shouye/bizhi1124.jpg","http://img0.bdstatic.com/img/image/shouye/mingxing1124.jpg","http://img0.bdstatic.com/img/image/shouye/chongwu1124.jpg","http://img0.bdstatic.com/img/image/shouye/dongman1124.jpg"];
    }
    
    func backScrollerViewForWidthAndHeight() -> CGSize {
        return CGSize(width: screenWidth-20, height: 260)
    }
    
    func handleTapAction(tap:UITapGestureRecognizer)->Void{
        let page : Int = slideAd.backCurrentClickPicture()
        print("%d",page)
    }
}
