//
//  Item.swift
//  JiuJitsuGymApp2
//
//  Created by Sage Carlton on 16/8/2567 BE.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
