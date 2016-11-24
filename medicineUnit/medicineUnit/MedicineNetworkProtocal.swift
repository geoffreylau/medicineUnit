//
//  MedicineNetworkProtocal.swift
//  medicineUnit
//
//  Created by Geo on 16/11/23.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

typealias medicineResponseSuccessBlock = (_ task:URLSessionTask?, _ responseObj: Any?) -> Void
typealias medicineResponseFailBlock = (_ task:URLSessionTask?, _ responeseObj: Error?) -> Void

protocol MedicineNetworkProtocal {
    func postRequestWithUrl(_ url:String, jsonBody:String,
                            success: @escaping medicineResponseSuccessBlock,
                            fail: @escaping medicineResponseFailBlock)
}
