# Todo App 📋

A simple and intuitive Todo application built with SwiftUI that helps you manage your daily tasks efficiently.

## Demo 🎬

Check out the app in action! The demo showcases all the key features including adding tasks, editing, deleting, reordering, and the dark mode toggle functionality.

📹 **[View Demo Video](./demo/todo-app-demo.mov)**

*The demo video demonstrates:*
- Adding new todo items
- Marking tasks as complete/incomplete
- Editing existing tasks
- Deleting tasks with swipe gestures
- Reordering tasks in edit mode
- Switching between light and dark themes
- Theme persistence across app sessions

## Features ✨

### Core Functionality
- **Add New Tasks**: Tap the "Add Item" button to create new todo items using an alert-style popup
- **Mark as Complete**: Tap the circle icon to toggle task completion status
- **Edit Tasks**: Tap on any task text to edit it inline using an alert dialog
- **Delete Tasks**: Swipe left on tasks or use Edit mode to delete unwanted items
- **Reorder Tasks**: Use Edit mode to drag and rearrange your tasks in preferred order

### Visual Features
- **Dark Mode Support**: Toggle between light and dark themes with a dedicated button
  - 🌙 Moon icon (blue) in light mode - tap to switch to dark mode
  - ☀️ Sun icon (yellow) in dark mode - tap to switch to light mode
  - Theme preference persists between app sessions
- **Completion Indicators**: 
  - ✅ Green checkmark circle for completed tasks
  - ⭕ Red empty circle for pending tasks
- **Strikethrough Text**: Completed tasks display with crossed-out text and gray color
- **Smart UI**: Edit button only appears when there are tasks to edit
- **Empty State**: Friendly message when no tasks exist

### User Experience
- **Theme Persistence**: Your preferred light/dark mode setting is automatically saved and restored
- **Alert-based Input**: Quick and native iOS-style popups for adding and editing tasks
- **Real-time Updates**: Instant visual feedback when toggling task completion
- **Intuitive Gestures**: Familiar iOS patterns for editing, deleting, and reordering
- **Clean Design**: Modern SwiftUI interface following iOS design guidelines
- **Adaptive Interface**: Seamless switching between light and dark appearances

## Architecture 🏗️

The app follows the MVVM (Model-View-ViewModel) pattern:

- **Model** (`ItemModel`): Represents individual todo items with unique IDs, titles, and completion status
- **ViewModels**: 
  - `ListViewModel`: Manages todo list business logic and data operations using `@ObservableObject`
  - `ThemeManager`: Handles dark mode state management and theme persistence
- **Views**: 
  - `ListView`: Main todo list interface with dark mode toggle
  - `ListRowView`: Individual todo item row component

## Data Persistence 💾

- **Todo Items**: Stored locally using UserDefaults with JSON encoding/decoding
- **Theme Preference**: Dark mode setting automatically saved and restored across app sessions

## Project Structure 📁

```
Todo_App/
├── Todo_App.swift          # Main app entry point with theme management
├── Models/
│   └── ItemModel.swift     # Todo item data model
├── ViewModels/
│   ├── ListViewModel.swift # Business logic and data management
│   └── ThemeManager.swift  # Dark mode state and persistence
└── Views/
    ├── ListView.swift      # Main todo list view with theme toggle
    └── ListRowView.swift   # Individual todo item view
```

## Technologies Used 🛠️

- **SwiftUI**: Modern declarative UI framework
- **UserDefaults**: Local data persistence for both todos and theme preferences
- **Combine**: Reactive programming with `@ObservableObject` and `@Published` properties
- **JSON Encoding/Decoding**: Efficient data serialization

## Requirements 📱

- **iOS**: 15.0+
- **Xcode**: 13.0+
- **Swift**: 5.5+

## How to Run 🚀

### Prerequisites
1. Make sure you have Xcode installed on your Mac
2. Ensure you have iOS 15.0+ simulator or device for testing

### Installation Steps

1. **Clone or Download the Project**
   ```bash
   git clone https://github.com/coderaryanjain/Todo_App.git
   # or download and extract the ZIP file
   ```

2. **Open the Project**
   - Navigate to the project folder
   - Double-click on `Demo_Proj_Todo.xcodeproj` to open in Xcode

3. **Select Target Device**
   - In Xcode, select your preferred simulator (iPhone 14, iPhone 15, etc.) or connected iOS device from the device dropdown

4. **Build and Run**
   - Press `Cmd + R` or click the "Play" button in Xcode
   - The app will build and launch on your selected device/simulator

### Alternative Method
1. Open Xcode
2. Select "Open a project or file"
3. Navigate to and select `Todo_App.xcodeproj`
4. Choose your target device
5. Click the Run button (▶️)

## Usage Guide 📖

1. **Adding Tasks**: Tap "Add Item" → Enter task text → Tap "Add"
2. **Completing Tasks**: Tap the circle next to any task to mark it complete
3. **Editing Tasks**: Tap on the task text → Edit in the popup → Tap "Save"
4. **Deleting Tasks**: Swipe left on a task → Tap "Delete"
5. **Reordering Tasks**: Tap "Edit" → Drag tasks using the handle on the right
6. **Bulk Operations**: Use "Edit" mode for multiple selections

## Technical Details 🔧

- **Data Persistence**: Currently uses in-memory storage (resets on app restart)
- **State Management**: SwiftUI's `@StateObject` and `@EnvironmentObject`
- **UI Framework**: 100% SwiftUI with native iOS components
- **Architecture Pattern**: MVVM for clean separation of concerns

## Future Enhancements 🚀

- [ ] Core Data integration for persistent storage
- [ ] Task categories and tags
- [ ] Due dates and reminders
- [ ] Search and filter functionality
- [ ] Dark mode support
- [ ] iCloud sync
- [ ] Widget support

## Contributing 🤝

Feel free to fork this project and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

## License 📄

This project is open source and available under the [MIT License](LICENSE).

---

Built with ❤️ using SwiftUI
