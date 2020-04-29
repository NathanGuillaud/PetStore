//
//  PetDetails.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI

struct PetDetails: View {
    var pet:Pet
    var body: some View {
        VStack{
            Text(pet.name)
                .font(.headline)
                .foregroundColor(.primary)
            Text("Insert a description")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        
    }
}

struct PetDetails_Previews: PreviewProvider {
    static var previews: some View {
        PetDetails(pet: petData[0])
    }
}
