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
    Pet(id: 1, name: "Cochon"),
    Pet(id: 2, name: "Poule"),
    Pet(id: 3, name: "Chien"),
    Pet(id: 4, name: "Chat"),
    Pet(id: 5, name: "Souris"),
    Pet(id: 6, name: "Serpent"),
    Pet(id: 7, name: "Tigre")
]

struct Pet : Identifiable {
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
