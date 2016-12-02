//
//  MedicineNetworkProtocal.swift
//  medicineUnit
//
//  Created by Geo on 16/11/23.
//  Copyright © 2016年 Geo. All rights reserved.
//

import Alamofire
import UIKit

typealias medicineResponseBlock = (_ response : DataRes) -> Void

protocol MedicineNetworkProtocal {
    func postRequestWithUrl(_ url:String?, jsonBody:Parameters?,
                            responseBlock: @escaping medicineResponseBlock)
}
