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
    @State var isPresentingAddModal = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(petsListViewModel.petsList) { pet in
                        NavigationLink(destination: PetsDetailsView(pet: pet)){
                            PetsRowView(pet: pet, didDeletePet: {
                                petId in
                                self.petsListViewModel.deletePet(petId: petId)
                            })
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Pets"))
            .navigationBarItems(trailing:
                /*HStack {
                 NavigationLink(destination: PetCreationView()) {
                 Text("Add a pet")
                 }
                 Button(action: {
                 self.petsListViewModel.fetchPets()
                 }, label: {
                 Text("Fetch pets")
                 })
                 }*/
                Button(action: {
                    self.isPresentingAddModal.toggle()
                }, label: {
                    Text("Add a pet")
                })
                
            ).sheet(isPresented: $isPresentingAddModal, content: {
                PetCreationView(isPresented: self.$isPresentingAddModal, didAddPet: { pet in
                    self.petsListViewModel.addPet(id: pet.id, name: pet.name, category: pet.category, url: pet.photoUrls, status: pet.status)
                })
            })
        }
    }
}

struct PetsListView_Previews: PreviewProvider {
    static var previews: some View {
        PetsListView()
    }
}
