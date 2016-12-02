//
//  HomePageInteractor.swift
//  medicineUnit
//
//  Created by Geo on 16/11/28.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class HomePageInteractor {
    
    let networkProtocol : MedicineNetworkProtocal = ProtocalManager.shareInstance.getNetworkProtocal()
    
    public func getAdList() -> [HomePageModel]{
        let timeStr : String = MedicineUtil.formateDate(date: Date(), format: "yyyyMMddHHmmss")
        let json :  = ["messageId":kIDFA,"transTime":timeStr,"digest":MedicineUtil.createDigest(),"number":"5"]
        networkProtocol.postRequestWithUrl(kSlideAdUrl, jsonBody: json) { response in
            if(response.result.isSuccess){
                print("responseJSON: \(response.result.value)")
            }else{
                print("error:\(response.result.error.debugDescription)")
            }
        }
        
        return []
    }
}
