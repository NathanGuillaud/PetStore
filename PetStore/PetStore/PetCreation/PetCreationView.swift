//
//  PetCreationView.swift
//  PetStore
//
//  Created by NathanGuillaud on 04/05/2020.
//  Copyright © 2020 NathanGuillaud. All rights reserved.
//

import SwiftUI
import OpenAPIClient

struct PetCreationView: View {
    
    @Binding var isPresented: Bool
    
    @ObservedObject var petCreationViewModel = PetCreationViewModel()
    
    @State private var id: Int = 743
    @State private var name: String = ""
    @State private var category: OpenAPIClient.Category = categoryData[0]
    @State private var url: String = ""
    @State private var status: Pet.Status = Pet.Status.available
    
    var didAddPet: (Pet) -> ()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    
                    Section(header: Text("General")) {
                        Stepper(value: $id,
                                in: 1...1000,
                                label: {
                                    Text("ID: \(self.id)")
                        })
                        HStack {
                            TextField("Name", text: $name)
                        }
                        HStack {
                            Picker(selection: $category,
                                   label: Text("Category")) {
                                    ForEach(categoryData, id: \.self) { category in
                                        Text(category.name!)
                                            .tag(category.name)
                                    }
                            }
                        }
                    }
                    Section(header: Text("Details")) {
                        HStack {
                            TextField("URL", text: $url)
                        }
                        HStack {
                            Picker(selection: $status,
                                   label: Text("Status")) {
                                    ForEach(Pet.Status.allCases, id: \.self) { status in
                                        Text(status.rawValue)
                                            .tag(status)
                                    }
                            }
                        }
                    }
                }
                
                
                Button(action: {
                    print("Adding pet button pressed")
                    //Close the modal
                    self.isPresented = false
                    //Save tthe pet
                    //self.petCreationViewModel.savePet(id: self.id, name: self.name, url: self.url, status: self.status)
                    //Notify the pets list
                    self.didAddPet(.init(id: Int64(self.id), category: self.category, name: self.name, photoUrls: [self.url], tags: [Tag(id: 1, name: "animal")], status: self.status))
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .background(Color.green)
                            .cornerRadius(10)
                        Spacer()
                    }
                }
                Spacer()
                Button(action: {
                    print("Cancel button pressed")
                    //Close the modal
                    self.isPresented = false
                }) {
                    HStack {
                        Spacer()
                        Text("Cancel")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .background(Color.red)
                            .cornerRadius(10)
                        Spacer()
                    }
                }
                Spacer()
            }
                
                
            .navigationBarTitle("Add a pet")
        }
    }
}

/*struct PetCreationView_Previews: PreviewProvider {
 static var previews: some View {
 PetCreationView()
 }
 }*/
