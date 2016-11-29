//
//  MedicineNetworkImpl.swift
//  medicineUnit
//
//  Created by Geo on 16/11/24.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

class MedicineNetworkImpl: MedicineNetworkProtocal {

    func postRequestWithUrl(_ url: String,
                            jsonBody: String,
                            success: @escaping medicineResponseSuccessBlock,
                            fail: @escaping medicineResponseFailBlock) {
        let manager = AFHTTPSessionManager()
        let securityPolicy : AFSecurityPolicy = AFSecurityPolicy(pinningMode: AFSSLPinningMode.none)
        
        securityPolicy.allowInvalidCertificates = true
        securityPolicy.validatesDomainName = true
        manager.securityPolicy = securityPolicy
        manager.post(url, parameters: jsonBody, progress: nil, success: { (task:URLSessionDataTask?, responseObj:Any?) in
            success(task, responseObj)
        },failure: { (task:URLSessionDataTask?, error: Error) in
            fail(task, error)
        })
    }
}
