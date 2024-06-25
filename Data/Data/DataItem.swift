//
//  DataItem.swift
//  Data
//
//  Created by Scholar on 6/25/24.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable{
    var id: String
    var name: String
    
    init(name: String){
        self.id = UUID().uuidString
        self.name = name
    }
}
