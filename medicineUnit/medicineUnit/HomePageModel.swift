//
//  HomePageModel.swift
//  medicineUnit
//
//  Created by Geo on 16/11/28.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

class HomePageModel: MedicineBaseModel {

    var adID : String? {
        get{
            return self.adID
        }
        set{
            self.adID = newValue
        }
    }
    var adUrl : String? {
        get{
            return self.adUrl
        }
        set{
            self.adUrl = newValue
        }
    }
    var adType : String? {
        get{
            return self.adType
        }
        set{
            self.adType = newValue
        }
    }
    var infoAdUrl : String? {
        get{
            return self.infoAdUrl
        }
        set{
            self.infoAdUrl = newValue
        }
    }
    var productOrResourceId : String? {
        get{
            return self.productOrResourceId
        }
        set{
            self.productOrResourceId = newValue
        }
    }
    var informationTitle : String? {
        get{
            return self.informationTitle
        }
        set{
            self.informationTitle = newValue
        }
    }
    var informationDetail : String? {
        get{
            return self.informationDetail
        }
        set{
            self.informationDetail = newValue
        }
    }
}
