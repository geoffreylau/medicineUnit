//
//  HomePageViewController.swift
//  medicineUnit
//
//  Created by Geo on 16/11/24.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

class HomePageViewController: MedicineBaseViewController, HomePageSlideAdDelegate {
    private var slideAd : HomePageSlideAd!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        slideAd = HomePageSlideAd()
        slideAd.delegate = self
        slideAd.isPageControl = true
        self.addChildViewController(slideAd)
        self.view.addSubview(slideAd.view)
        slideAd.view.frame = CGRect(x:0, y:0, width:kScreenWidth, height:220);
        let tap = UITapGestureRecognizer(target: self, action: Selector(("handleTapAction:")))
        slideAd.view.addGestureRecognizer(tap)
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    func backDataSourceArray() -> NSMutableArray {
        return ["http://img0.bdstatic.com/img/image/shouye/sheying1124.jpg","http://img0.bdstatic.com/img/image/shouye/bizhi1124.jpg","http://img0.bdstatic.com/img/image/shouye/mingxing1124.jpg","http://img0.bdstatic.com/img/image/shouye/chongwu1124.jpg","http://img0.bdstatic.com/img/image/shouye/dongman1124.jpg"];
    }
    
    func backScrollerViewForWidthAndHeight() -> CGSize {
        return CGSize(width: kScreenWidth, height: 200)
    }
    
    func handleTapAction(tap:UITapGestureRecognizer)->Void{
        let page : Int = slideAd.backCurrentClickPicture()
        print("%d",page)
    }
}
