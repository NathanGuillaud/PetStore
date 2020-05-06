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
    
    @Published var petsList: [Pet] = petData
    
    init() {
        self.fetchPets()
    }
    
    func fetchPets(){
        
        let petTags = ["animal"] // Int64 | ID of pet to return
        
        // Find pet by ID
        PetAPI.findPetsByTags(tags: petTags) { (response, error) in
            guard error == nil else {
                print(error)
                return
            }

            if ((response) != nil) {
                let pets: [Pet]! = response
                if(pets != nil){
                    print("----- LIST AFTER FETCHING -----")
                    pets.forEach{
                        pet in print(pet.name)
                    }
                    DispatchQueue.main.async {
                        self.petsList = pets
                        print(self.petsList)
                    }
                    
                }
            }
        }
    }
    
    func addPet(id: Int64?, name: String, category: OpenAPIClient.Category?, url: [String], status: Pet.Status?) {
                
        let body = Pet(id: id, category: category, name: name, photoUrls: url, tags: [Tag(id: 1, name: "animal")], status: status)

        // Add a new pet to the store
        PetAPI.addPet(body: body) { (response, error) in
            guard error == nil else {
                print(error)
                return
            }

            if ((response) != nil) {
                self.fetchPets()
            }
        }
        
    }
    
    func deletePet(petId: Int64) {
        let apiKey = "apiKey_example" // String |  (optional)

        // Deletes a pet
        PetAPI.deletePet(petId: petId, apiKey: apiKey) { (response, error) in
            guard error == nil else {
                print(error)
                return
            }

            if ((response) != nil) {
                self.fetchPets()
            }
        }
        
    }
    
}
