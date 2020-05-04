//
//  Pet.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import Foundation
import SwiftUI
import OpenAPIClient

let petData = [
    Pet(id: 100, category: Category(id: 100, name: "Category 100"), name: "Pet 100", photoUrls: ["photoUrls_example"], tags: nil, status: nil),
    Pet(id: 101, category: Category(id: 100, name: "Category 100"), name: "Pet 101", photoUrls: ["photoUrls_example"], tags: nil, status: nil)
]
