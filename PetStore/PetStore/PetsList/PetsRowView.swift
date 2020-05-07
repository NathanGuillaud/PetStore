//
//  PetRowView.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI
import OpenAPIClient

struct PetsRowView: View {
    var pet:Pet
        
    var body: some View {
        HStack{
            if(!pet.photoUrls[0].isEmpty) {
                URLImage(url: URL(string: pet.photoUrls[0])!, placeholder: Image("default")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 10), circular: true)
            } else {
                Image("default")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 10)
            }
            Spacer()
            Text(pet.name)
                .foregroundColor(.primary)
            Spacer()
            Text(pet.category?.name ?? "NO CATEGORY")
                .foregroundColor(.secondary)
        }.padding()
    }
}

struct PetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        PetsRowView(pet: petData[0])
    }
}
