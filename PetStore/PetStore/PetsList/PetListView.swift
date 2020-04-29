//
//  ContentView.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI

struct PetListView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(petData) { pet in
                        NavigationLink(destination: PetDetails(pet: pet)){
                            PetRowView(pet: pet)
                        }
                    }
                }
            }
        .navigationBarTitle(Text("Pets"))
        }
    }
}

struct PetListView_Previews: PreviewProvider {
    static var previews: some View {
        PetListView()
    }
}
