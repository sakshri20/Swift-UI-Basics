//
//  ListsExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 3/1/26.
//

import SwiftUI

struct ListsExample: View {
    
    @State var fruits = [
        "mango", "banana", "orange", "apple"
    ]
    
    @State var veggies = [
        "tomatoes", "carrot", "cucumber", "potatoes"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "carrot.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self, content: { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        })
                        .onDelete(perform: deleteRow)
                        .onMove(perform: moveRow)
                        .listRowBackground(Color.blue)
                }
                
                Section(
                    header:
                        HStack {
                            Text("Veggies")
                            Image(systemName: "carrot.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.green)
                ) {
                        ForEach(veggies, id: \.self, content: { fruit in
                            Text(fruit.capitalized)
                        })
                }
            }
            // .listStyle(DefaultListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading, content: {
                    EditButton()
                })
                
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    addButton
                })
            }
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            addAction()
        })
    }
    
    func deleteRow(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveRow(indices: IndexSet, newOffSet: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffSet)
    }
    
    func addAction() {
        fruits.append("coconut")
    }
}

#Preview {
    ListsExample()
}
