//
//  UrlImage.swift
//  MakeupApiSwiftUI
//
//  Created by Maria Paderina on 10/15/19.
//  Copyright © 2019 Maria Paderina. All rights reserved.
// convert url to UIImage  URLImageView


import Foundation
import SwiftUI

struct UrlImage: View {
    // get image
    @ObservedObject var imageLoader = ImageLoad()
    var placeholder :Image
    
    init (url: String, placeholder: Image = Image(systemName: "Photo") ) {
        self.placeholder = placeholder
        self.imageLoader.load(url: url)
    }
    
    var body: some View {
        if let uiImage = self.imageLoader.downloadedImage {
            return Image(uiImage: uiImage)
        } else {
            return placeholder
        }
    }
}
