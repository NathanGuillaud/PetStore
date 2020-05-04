//
//  PetDetails.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI
import OpenAPIClient

struct PetsDetailsView: View {
    var pet:Pet
    var body: some View {
        VStack{
            Text(pet.name)
                .font(.headline)
                .foregroundColor(.primary)
            Text("\(pet.name) is a \(pet.category?.name?.lowercased() ?? "NO CATEGORY") animal")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        
    }
}

struct PetsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PetsDetailsView(pet: petData[0])
    }
}
