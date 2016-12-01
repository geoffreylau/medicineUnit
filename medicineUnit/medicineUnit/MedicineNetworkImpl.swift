//
//  MedicineNetworkImpl.swift
//  medicineUnit
//
//  Created by Geo on 16/11/24.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

class MedicineNetworkImpl: MedicineNetworkProtocal {

    func postRequestWithUrl(_ url: String?,
                            jsonBody: [AnyHashable:Any]?,
                            success: @escaping medicineResponseSuccessBlock,
                            fail: @escaping medicineResponseFailBlock) {
        let manager = AFHTTPRequestOperationManager()
        manager.responseSerializer = AFJSONResponseSerializer()
        
        manager.post(url, parameters: jsonBody, success: { (opertaion:AFHTTPRequestOperation?, responseObj:Any?) in
                success(opertaion, responseObj)
        }) { (opertaion:AFHTTPRequestOperation?, error:Error?) in
            fail(opertaion, error)
        }
    }
}
