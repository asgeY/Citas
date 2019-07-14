//
//  SearchView.swift
//  Citas
//
//  Created by Asge Yohannes on 7/12/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct SearchView : View {
    @Binding var text: String
    var body: some View {
        ZStack {
            Color.gray
            HStack {
                TextField("Search a Quote...", text: $text)
                    .padding([.leading, .trailing], 8)
                    .frame(height: 32)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(8)
            }
            .padding([.leading, .trailing], 16)
        }
        .frame(height: 64)
    }
    
}
#if DEBUG
struct SearchView_Previews : PreviewProvider {
    static var previews: some View {
        SearchView(text: .constant(""))
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
#endif
