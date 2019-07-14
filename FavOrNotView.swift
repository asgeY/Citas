//
//  FavOrNotView.swift
//  Citas
//
//  Created by Asge Yohannes on 7/13/19.
//  Copyright © 2019 Asge Yohannes. All rights reserved.
//

import SwiftUI

struct FavOrNotView : View {
    var body: some View {
        VStack (alignment: .center){
            HStack(spacing: 100) {
                Image(systemName: "heart.slash")
                    .resizable()
                    .frame(width: 32, height: 32, alignment: .trailing)
                    .foregroundColor(.black)
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 32, height: 32, alignment: .trailing)
                    .foregroundColor(.black)
                .padding()
            }
                .padding(.vertical)
            .padding([.leading, .trailing], 30)
            .padding(.top, 650)
            Spacer()
        }
    }
}

#if DEBUG
struct FavOrNotView_Previews : PreviewProvider {
    static var previews: some View {
        FavOrNotView()
    }
}
#endif
