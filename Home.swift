//
//  Home.swift
//  Citas
//
//  Created by Asge Yohannes on 7/12/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct Home : View {
    @State var show = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        
        ZStack{
            TabView()
            TopTabs()
            MainImageView(image: "man2")
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: show ? 15 : 0))
                .blendMode(.hardLight)
                .offset( x: viewState.width, y: viewState.height )
                .animation(.basic(duration: 0.6, curve: .easeInOut))
            MainImageView(image: "Man1")
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -200 : -20)
                .scaleEffect(0.90)
                .blendMode(.hardLight)
                .rotationEffect(Angle(degrees: show ? 10 : 0))
                .offset( x: viewState.width, y: viewState.height )
                .animation(.basic(duration: 0.4, curve: .easeInOut))
            
            MainImageView()
                .shadow(radius: 20)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
                .offset( x: viewState.width, y: viewState.height )
                .animation(.spring())
                .tapAction {
                    self.show.toggle()
            }
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.viewState = value.translation
                        self.show = true
                }
                .onEnded { value in
                    self.viewState = .zero
                    self.show = false
                }
            )

            
        }
        
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
