//
//  PetDetails.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI

struct PetsDetails: View {
    var pet:Pet
    var body: some View {
        VStack{
            Text(pet.name)
                .font(.headline)
                .foregroundColor(.primary)
            Text("\(pet.name) is a \(pet.category.lowercased()) animal")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        
    }
}

struct PetsDetails_Previews: PreviewProvider {
    static var previews: some View {
        PetsDetails(pet: petData[0])
    }
}
