//
//  ListViewModels.swift
//  Demo_Proj_Todo
//
//  Created by Aryan Jain on 21/07/25.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        didSet {
            saveData()
        }
    }

    let key: String = "items"
    init() {
        getItems()
    }

    func getItems() {
        guard let data = UserDefaults.standard.data(forKey: key),
              let decodedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
        items = decodedItems
    }

    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

    func moveItems(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }

    func addItem(title: String) {
        items.append(ItemModel(title: title))
    }

    func updateIsCompleted(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isCompleted.toggle()
        }
    }

    func updateItemTitle(item: ItemModel, newTitle: String) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].title = newTitle
        }
    }

    func saveData() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: key)
        }
    }
}
