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
    
    var didDeletePet: (Int64) -> ()
    
    var body: some View {
        HStack{
            Text(pet.name)
                .foregroundColor(.primary)
            Spacer()
            Text(pet.category?.name ?? "NO CATEGORY")
                .foregroundColor(.secondary)
            Spacer()
            Button(action: {
                let petId: Int64! = self.pet.id
                if(petId != nil) {
                    self.didDeletePet(petId)
                }
            }, label: {
                Text("Delete")
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .background(Color.red)
            })
        }.padding()
    }
}

/*struct PetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        PetsRowView(pet: petData[0])
    }
}*/
