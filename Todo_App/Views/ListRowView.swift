//
//  ListRowView.swift
//  Demo_Proj_Todo
//
//  Created by Aryan Jain on 21/07/25.
//
import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    @EnvironmentObject var listViewModel: ListViewModel
    @State private var isEditing = false
    @State private var editText = ""
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
                .onTapGesture {
                    listViewModel.updateIsCompleted(item: item)
                }
                    
            Text(item.title)
                .strikethrough(item.isCompleted)
                .foregroundColor(item.isCompleted ? .secondary : .primary)
                .onTapGesture {
                    editText = item.title
                    isEditing = true
                }
                
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
        .alert("Edit", isPresented: $isEditing) {
            TextField("Enter todo item", text: $editText)
            Button("Save") {
                if !editText.isEmpty {
                    listViewModel.updateItemTitle(item: item, newTitle: editText)
                }
            }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Edit your todo item")
        }
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "Sample Todo Item", isCompleted: false))
        .environmentObject(ListViewModel())
        .environmentObject(ThemeManager())
    ListRowView(item: ItemModel(title: "Sample Todo Item", isCompleted: true))
        .environmentObject(ListViewModel())
        .environmentObject(ThemeManager())
}
