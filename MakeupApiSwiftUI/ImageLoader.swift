//
//  ImageLoader.swift
//  MakeupApiSwiftUI
//
//  Created by Maria Paderina on 10/14/19.
//  Copyright © 2019 Maria Paderina. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI
import Combine

//var url = "https://d3t32hsnjxo7q6.cloudfront.net/i/991799d3e70b8856686979f8ff6dcfe0_ra,w158,h184_pa,w158,h184.png"

final class ImageLoad: ObservableObject  {
    @Published var downloadedImage : UIImage?
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    func load (url: String ){
        // url object
        guard let imageUrl = URL(string: url) else { fatalError("Invalid url")
        }
        //download the image
        URLSession.shared.dataTask(with: imageUrl) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.objectWillChange.send ()
                }
                return
            }
            // assign received data to downloadedImage object
            self.downloadedImage = UIImage(data: data)
            DispatchQueue.main.async {
                self.objectWillChange.send()
            }
        }.resume()
    }
}


