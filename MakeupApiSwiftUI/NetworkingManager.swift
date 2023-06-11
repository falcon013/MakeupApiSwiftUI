//
//  NetworkingManager.swift
//  MakeupApiSwiftUI
//
//  Created by Maria Paderina on 10/10/19.
//  Copyright © 2019 Maria Paderina. All rights reserved.
//

import Foundation
import SwiftUI
import Combine


class NetworkingManager: ObservableObject {
    @Published var makeup: MakeUp = [MakeupList]()
    let basicUrl =  "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"
    
    
    init() {
        guard let url = URL(string: basicUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let data = data else { return }
                let makeupResult = try JSONDecoder().decode(MakeUp.self, from: data)
                DispatchQueue.main.async {
                    
                    self.makeup = makeupResult
                }
            } catch {
                
                print ("Error decoding data\n", error)
            }
        }.resume()
    }
}

