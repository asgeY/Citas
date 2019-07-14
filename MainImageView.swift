//
//  MainImageView.swift
//  Citas
//
//  Created by Asge Yohannes on 7/12/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct MainImageView : View {
    var image = "Mandela"
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 320, height: 450)
            .clipped()
            .cornerRadius(20)
            .shadow(color: .black, radius: 5, x: 5, y: 5)
            .padding(.top, 90)
        
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        MainImageView()
    }
}
#endif
