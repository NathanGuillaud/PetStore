//
//  PetsListViewModel.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class PetsListViewModel : ObservableObject {
    
    @Published var petsList = petData
    
    func addPet(){
        petsList.append(Pet(name: "Rabbit", category: "Domestic"))
    }
    
}
