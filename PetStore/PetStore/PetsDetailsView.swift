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
        VStack(alignment: .leading){
            if(!pet.photoUrls[0].isEmpty) {
                URLImage(url: URL(string: pet.photoUrls[0])!, placeholder: Text("NO IMAGE"))
            }
            
            Text(pet.name)
                .font(.headline)
                .foregroundColor(.primary)
                .padding()
            HStack {
                Text("Category")
                Spacer()
                Text(pet.category?.name?.lowercased() ?? "")
            }
            .font(.subheadline)
            .padding()
            HStack {
                Text("Status")
                Spacer()
                Text(pet.status?.rawValue ?? "")
            }
            .font(.subheadline)
            .padding()
        }
        .padding()
        
    }
}

struct PetsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PetsDetailsView(pet: petData[0])
    }
}
