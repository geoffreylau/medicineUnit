//
//  MedicineNetworkProtocal.swift
//  medicineUnit
//
//  Created by Geo on 16/11/23.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

typealias medicineResponseSuccessBlock = (_ operation:AFHTTPRequestOperation?, _ responseObj: Any?) -> Void
typealias medicineResponseFailBlock = (_ operaton:AFHTTPRequestOperation?, _ responeseObj: Error?) -> Void

protocol MedicineNetworkProtocal {
    func postRequestWithUrl(_ url:String?, jsonBody:Dictionary?,
                            success: @escaping medicineResponseSuccessBlock,
                            fail: @escaping medicineResponseFailBlock)
}
