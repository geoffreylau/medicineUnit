//
//  MedicineRootViewController.swift
//  medicineUnit
//
//  Created by Geo on 16/11/24.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

class MedicineRootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createViewControllers()
    }

    func createViewControllers() -> Void {
        let homeController = HomePageViewController()
        homeController.tabBarItem.title = "首页"
        homeController.tabBarItem.image = UIImage(named: "hometab_normal")
        homeController.tabBarItem.selectedImage = UIImage(named: "hometab_selected")
        let homeNav = UINavigationController(rootViewController: homeController)
        //产品
        let productController = ProductViewController()
        productController.tabBarItem.title = "产品"
        productController.tabBarItem.image = UIImage(named: "producttab_normal")
        productController.tabBarItem.selectedImage = UIImage(named: "producttab_selected")
        let productNav = UINavigationController(rootViewController: productController)
        //资源
        let resourceController = ResourceViewController()
        resourceController.tabBarItem.title = "资源"
        resourceController.tabBarItem.image = UIImage(named: "resourcetab_normal")
        resourceController.tabBarItem.selectedImage = UIImage(named: "resourcetab_selected")
        let resourceNav = UINavigationController(rootViewController: resourceController)
        //我的
        let meController = MeViewController()
        meController.tabBarItem.title = "我的"
        meController.tabBarItem.image = UIImage(named: "metab_normal")
        meController.tabBarItem.selectedImage = UIImage(named: "metab_selected")
        let meNav = UINavigationController(rootViewController: meController)
        
        self.viewControllers = [homeNav, productNav, resourceNav, meNav]
    }
}
