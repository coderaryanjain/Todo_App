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
    @StateObject var themeManager: ThemeManager = ThemeManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
            .environmentObject(themeManager)
            .preferredColorScheme(themeManager.isDarkMode ? .dark : .light)
        }
    }
}
