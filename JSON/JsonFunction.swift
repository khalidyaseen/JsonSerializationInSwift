
//
//  JsonFunction.swift
//  JSON
//
//  Created by Yaseen on 06/06/17.
//  Copyright © 2017 Yaseen. All rights reserved.
//

import Foundation
import UIKit

func JsonParse(obbj: [String: AnyObject]){
    guard let contacts = obbj["contacts"] as? [[String: AnyObject]] else {return}
    
    print(contacts)
}
