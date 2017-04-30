//
//  Hostel.swift
//  Hostel
//
//  Created by Jushy Shen on 2017/4/29.
//  Copyright © 2017年 Jushy Shen. All rights reserved.
//

import Foundation
import Marshal

struct Hostel {
    
    let dataArray = ["台北","新北", "桃園", "新竹","苗栗", "台中", "彰化", "南投", "雲林", "嘉義","台南", "高雄", "屏東", "宜蘭", "花蓮", "台東", "澎湖", "金門" ]

    var nameArray = ""
    var addressArray = ""
    var priceArray  = ""
    var phoneNum1Array = ""
    var urlArray   = ""
    var emailArray = ""
    var latitudeArray = ""
    var longitudeArray = ""
    
    var addressType = ""

    init(object: MarshaledObject) throws {
    nameArray = try object.value(for: "name")
    addressArray = try object.value(for: "address")
    priceArray = try object.value(for: "price")
    }
    
}
