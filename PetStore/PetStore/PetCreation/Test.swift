//
//  Test.swift
//  PetStore
//
//  Created by NathanGuillaud on 04/05/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI

struct Test: View {
    var body: some View {
        NavigationView {
                NavigationLink(destination: PetCreationView()) {
                    Text("Do Something")
                }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
