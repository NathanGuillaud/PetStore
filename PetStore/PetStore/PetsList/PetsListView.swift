//
//  ContentView.swift
//  PetStore
//
//  Created by NathanGuillaud on 29/04/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI

struct PetsListView: View {
    
    @ObservedObject var petsListViewModel = PetsListViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(petsListViewModel.petsList) { pet in
                        NavigationLink(destination: PetsDetailsView(pet: pet)){
                            PetsRowView(pet: pet)
                        }
                    }
                }
            }
        .navigationBarTitle(Text("Pets"))
        .navigationBarItems(trailing: Button(action: {
            self.petsListViewModel.addPet()
        }, label: {
            Text("Add a pet")
        }))
        }
    }
}

struct PetsListView_Previews: PreviewProvider {
    static var previews: some View {
        PetsListView()
    }
}
