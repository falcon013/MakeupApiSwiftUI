//
//  MakeupAPIList.swift
//  MakeupApiSwiftUI
//
//  Created by Maria Paderina on 10/10/19.
//  Copyright © 2019 Maria Paderina. All rights reserved.
//

import Foundation

struct MakeupAPIList: Decodable {
    var array :[MakeupListEntry]
}

struct MakeupListEntry:Decodable{
    var brand: String
    var name: String
}
