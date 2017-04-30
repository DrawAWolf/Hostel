//
//  GetAllHostels.swift
//  Hostel
//
//  Created by Jushy Shen on 2017/4/29.
//  Copyright © 2017年 Jushy Shen. All rights reserved.
//

import Foundation
import Alamofire
import Marshal

public class  GetAllHostels {
    let url  = URL(string: "https://7bf18ced-9507-4903-b819-faa5446dc43a-bluemix.cloudant.com/hostel/Hostel_V2/")
    func getFromJSON(completionHandler: @escaping (Array<Hostel>) -> Void) {
       Alamofire.request(url!).responseJSON { (response) in
        if let hostelList = response.result.value {
            
            print(hostelList)
        }
            let hostels = Array<Hostel>()
            completionHandler(hostels)
        }
        }
    }


