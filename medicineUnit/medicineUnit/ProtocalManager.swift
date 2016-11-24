//
//  ProtocalManager.swift
//  medicineUnit
//
//  Created by Geo on 16/11/23.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

class ProtocalManager: NSObject {
    
    private override init() {}
    
    static let shareInstance = ProtocalManager()
    
    func getNetworkProtocal() ->MedicineNetworkProtocal {
        let networkProtocal = MedicineNetworkImpl()
        
        return networkProtocal;
    }
}
