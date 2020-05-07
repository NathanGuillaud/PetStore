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
    Pet(id: 100, category: Category(id: 100, name: "Category 100"), name: "Pet 100", photoUrls: ["https://loremflickr.com/320/240","http://pets.neopets.com/cp/goqcoz46/1/2.png","http://placekitten.com/200/200","https://petstore.com/sample/photo1.jpg"], tags: nil, status: nil),
    Pet(id: 101, category: Category(id: 100, name: "Category 100"), name: "Pet 101", photoUrls: ["https://picsum.photos/400/200"], tags: nil, status: nil)
]
