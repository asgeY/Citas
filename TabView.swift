//
//  TabView.swift
//  Citas
//
//  Created by Asge Yohannes on 7/12/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct TabView : View {
    var title = "Citas"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .color(.black)
                    
                }
                .padding()
                Spacer()
                
                Image(systemName: "gear")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 30, height: 30)
                    .padding(.trailing, 20.0)
            }
            Spacer()
        }
    }
}

#if DEBUG
struct TabView_Previews : PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
#endif


