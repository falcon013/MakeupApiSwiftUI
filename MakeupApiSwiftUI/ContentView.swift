//
//  ContentView.swift
//  MakeupApiSwiftUI
//
//  Created by Maria Paderina on 10/10/19.
//  Copyright © 2019 Maria Paderina. All rights reserved.
//

import SwiftUI
import Combine


struct ContentView: View {
    @ObservedObject var makeupData: NetworkingManager = NetworkingManager()
 
    var body: some View {
        
            List (self.makeupData.makeup) { makeups in
                
                UrlImage(url: makeups.image_link)
                Text (makeups.brand ?? "n/a").font(.title)
                Text (makeups.name ?? "n/a").font(.subheadline)
                Spacer()
                Text (makeups.price ?? "0")
                    
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
