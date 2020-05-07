//
//  URLImageView.swift
//  PetStore
//
//  Created by NathanGuillaud on 06/05/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import Foundation
import SwiftUI

struct URLImage<Placeholder: View>: View {
    @ObservedObject private var loader: ImageLoader
    private let placeholder: Placeholder?
    private let circular: Bool?
    
    init(url: URL, placeholder: Placeholder? = nil, circular: Bool? = false) {
        loader = ImageLoader(url: url)
        self.placeholder = placeholder
        self.circular = circular
    }
    
    var body: some View {
        image
            .onAppear(perform: loader.load)
            .onDisappear(perform: loader.cancel)
    }
    
    private var image: some View {
        Group {
            if loader.image != nil {
                if circular != nil && circular! {
                    Image(uiImage: loader.image!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                } else {
                    Image(uiImage: loader.image!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            } else {
                placeholder
            }
        }
    }
}
