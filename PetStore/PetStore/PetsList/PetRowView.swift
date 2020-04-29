//
//  PetRowView.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI

struct PetRowView: View {
    var pet:Pet
    
    var body: some View {
        HStack{
            Text(pet.name)
                .foregroundColor(.primary)
            Spacer()
        }.padding()
    }
}

struct PetRowView_Previews: PreviewProvider {
    static var previews: some View {
        PetRowView(pet: petData[0])
    }
}
