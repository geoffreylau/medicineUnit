//
//  MedicineNetworkImpl.swift
//  medicineUnit
//
//  Created by Geo on 16/11/24.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class MedicineNetworkImpl: MedicineNetworkProtocal {

    func postRequestWithUrl(_ url: String?,
                            jsonBody: [String:Any]?,
                            responseBlock: @escaping medicineResponseBlock) {
        Alamofire.request(url!, method: .post, parameters: jsonBody, encoding: JSONEncoding.default, headers: [:]).responseJSON { response in
            responseBlock(response)
        }
        //Alamofire.request()
    }
}
