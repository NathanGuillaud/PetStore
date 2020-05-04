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
import OpenAPIClient

class PetsListViewModel : ObservableObject {
    
    @Published var petsList = petData
    
    func addPet(){
/*
        let body = Pet(id: 123, category: Category(id: 123, name: "name_example"), name: "name_example", photoUrls: ["photoUrls_example"], tags: [Tag(id: 123, name: "name_example")], status: Pet.Status.available) // Pet | Pet object that needs to be added to the store

        // Add a new pet to the store
        PetAPI.addPet(body: body) { (response, error) in
            guard error == nil else {
                print(error)
                return
            }

            if ((response) != nil) {
                print(response)
            }
        }
        
        let petId = 123 // Int64 | ID of pet to return

        // Find pet by ID
        PetAPI.getPetById(petId: Int64(petId)) { (response, error) in
            guard error == nil else {
                print(error)
                return
            }

            if ((response) != nil) {
                print(response)
            }
        }*/
    }
    
}
