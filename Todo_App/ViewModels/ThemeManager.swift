//
//  ThemeManager.swift
//  Demo_Proj_Todo
//
//  Created by Aryan Jain on 21/07/25.
//

import SwiftUI

class ThemeManager: ObservableObject {
    @Published var isDarkMode: Bool = false {
        didSet {
            saveTheme()
        }
    }
    
    private let themeKey = "isDarkMode"
    
    init() {
        loadTheme()
    }
    
    func toggleTheme() {
        isDarkMode.toggle()
    }
    
    private func saveTheme() {
        UserDefaults.standard.set(isDarkMode, forKey: themeKey)
    }
    
    private func loadTheme() {
        isDarkMode = UserDefaults.standard.bool(forKey: themeKey)
    }
}