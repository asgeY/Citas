//
//  TabBar.swift
//  Citas
//
//  Created by Asge Yohannes on 7/12/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct TabBar : View {
    var body: some View {
        TabbedView {
            Home()
                .tabItem({
                    Image(systemName: "house")
                    Text("Home")
                })
                .tag(1)
            SearchViewModel()
                .tabItem({
                    Image(systemName:"magnifyingglass.circle")
                    Text("Search")
                })
                .tag(2)
            MainImageView()
                .tabItem({
                    Image(systemName:"heart.fill")
                    Text("Favorite")
                    
                })
                .tag(3)
            Settings()
                .tabItem({
                    Image(systemName:"gear")
                    Text("Settings")
                    
                })
                .tag(4)
        }
        .edgesIgnoringSafeArea(.top)
    }
    }


#if DEBUG
struct TabBar_Previews : PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
#endif
