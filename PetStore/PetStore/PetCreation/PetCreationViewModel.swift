//
//  PetCreationViewModel.swift
//  PetStore
//
//  Created by NathanGuillaud on 04/05/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import Foundation
import Combine
import SwiftUI
import OpenAPIClient

class PetCreationViewModel : ObservableObject {
    
    @Published var categoryList = categoryData
    
    func savePet(id: Int, name: String,  url: String, status: Pet.Status) {
                
        let body = Pet(id: Optional(Int64(id)), category: categoryData[0], name: name, photoUrls: [url], tags: [Tag(id: 1, name: "animal")], status: status)

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
    }
    
}
