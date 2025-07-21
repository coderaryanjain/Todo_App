//
//  Demo_Proj_TodoApp.swift
//  Demo_Proj_Todo
//
//  Created by Aryan Jain on 21/07/25.
//

import SwiftUI

@main
struct Todo_App: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
