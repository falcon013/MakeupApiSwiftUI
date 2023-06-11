//
//  Image.swift
//  MakeupApiSwiftUI
//
//  Created by Maria Paderina on 10/15/19.
//  Copyright © 2019 Maria Paderina. All rights reserved.
//

import Foundation
import SwiftUI

struct URLimage: View {
    
    @ObservedObject var imageLoader = ImageLoad()
    var placeholder :Image
    init (url: String, placeholder:Image = Image(systemName: "Photo") ) {
        self.placeholder = placeholder
    }
    
    
}
