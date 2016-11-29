//
//  MedicineUtil.swift
//  medicineUnit
//
//  Created by Geo on 16/11/28.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

class MedicineUtil {

    //根据appId、appKey、messageId和时间戳生成摘要
    public static func createDigest() -> String{
        let timeStr : String = formateDate(date: Date(), format: "yyyyMMddHHmmss")
        let digestStr : String = kClientAppID + "#" + kClientAppKey + "#" + kIDFA + "#" + timeStr;
        
        return digestStr.md5
    }
    //转换时间格式yyyyMMddHHmmss
    public static func formateDate(date:Date, format:String) -> String{
        let dateFormat : DateFormatter = DateFormatter()
        dateFormat.dateFormat = format
        let formateStr = dateFormat.string(from: date)
        
        return formateStr
    }
}
