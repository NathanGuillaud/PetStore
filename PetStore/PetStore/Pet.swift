//
//  Pet.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import Foundation
import SwiftUI

let petData = [
    Pet(name: "Pig", category: "Domestic"),
    Pet(name: "Lion", category: "Wild"),
    Pet(name: "Cat", category: "Domestic"),
    Pet(name: "Crocodile", category: "Wild"),
    Pet(name: "Dog", category: "Domestic"),
    Pet(name: "Snake", category: "Wild")
]

struct Pet : Identifiable {
    let id: UUID
    let name: String
    let category: String
    
    init(name: String, category: String) {
        self.id = UUID()
        self.name = name
        self.category = category
    }
}
