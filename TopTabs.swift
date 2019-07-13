//
//  TopTabs.swift
//  Citas
//
//  Created by Asge Yohannes on 7/12/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct TopTabs : View {
    var body: some View {
        HStack {
            TabViews()
            .font(.headline)
        }
    }
}

#if DEBUG
struct TopTabs_Previews : PreviewProvider {
    static var previews: some View {
        TopTabs()
    }
}
#endif

struct TabViews : View {
    var body: some View {
        return VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 30) {
                Text("Popular")
                Text("Recent")
                Text("Random")
                Text("Favorite")
            }
            .padding([.leading, .trailing], 4)
            .padding(.top, 70)
            Spacer()
        }
    }
}
