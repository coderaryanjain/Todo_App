//
//  ListView.swift
//  Demo_Proj_Todo
//
//  Created by Aryan Jain on 21/07/25.
//

import SwiftUI

struct ListView: View {
    
        
    @EnvironmentObject var listViewModel: ListViewModel;
    @EnvironmentObject var themeManager: ThemeManager;
    @State private var showingAddAlert = false
    @State private var newItemText = ""
    @State private var isEditing = false

    var body: some View {
        if listViewModel.items.isEmpty {
            VStack {
                Spacer()
                Text("No items yet!").font(.title)
                    
                Text("Add a new item to get started.")
                    .italic()
            }.padding().foregroundColor(.gray)
                
                
        }
        List {
            
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform: listViewModel.deleteItems)
            .onMove(perform: listViewModel.moveItems)
        }
        .environment(\.editMode, .constant(isEditing ? EditMode.active : EditMode.inactive))
        .navigationTitle("To-Do List 📋")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                HStack {
                    if !listViewModel.items.isEmpty {
                        Button(isEditing ? "Done" : "Edit") {
                            withAnimation {
                                isEditing.toggle()
                            }
                        }
                    }
                    Button(action: {
                        themeManager.toggleTheme()
                    }) {
                        Image(systemName: themeManager.isDarkMode ? "sun.max.fill" : "moon.fill")
                            .foregroundColor(themeManager.isDarkMode ? .yellow : .blue)
                    }
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Add Item") {
                    newItemText = ""
                    showingAddAlert = true
                }
            }
        }
        .alert("Add New Todo Item", isPresented: $showingAddAlert) {
            TextField("Enter todo item", text: $newItemText)
            Button("Add") {
                if !newItemText.isEmpty {
                    listViewModel.addItem(title: newItemText)
                }
            }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Enter your new todo item below")
        }
    }


    
}

#Preview {

        ListView()
    
    .environmentObject(ListViewModel())
    .environmentObject(ThemeManager())
}
