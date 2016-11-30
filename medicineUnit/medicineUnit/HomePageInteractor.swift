//
//  HomePageInteractor.swift
//  medicineUnit
//
//  Created by Geo on 16/11/28.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit
import SwiftyJSON

class HomePageInteractor {
    
    let networkProtocol : MedicineNetworkProtocal = ProtocalManager.shareInstance.getNetworkProtocal()
    
    public func getAdList() -> [HomePageModel]{
        let timeStr : String = MedicineUtil.formateDate(date: Date(), format: "yyyyMMddHHmmss")
        let json : JSON = JSON(["messageId":kIDFA,"transTime":timeStr,"digest":MedicineUtil.createDigest(),"number":"5"])
        networkProtocol.postRequestWithUrl(kSlideAdUrl, jsonBody: json.stringValue, success: { (task:URLSessionTask?, responseObj:Any?) in
            let responseObj : Any? = responseObj
        }, fail:{ (task:URLSessionTask?, error:Error?) in
            print(error.debugDescription)
        })
        
        return []
    }
}
