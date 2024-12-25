To-Do List App 

Is a productivity tool designed to help users efficiently manage their daily tasks. The app allows you to add, track, and complete tasks in a user-friendly and visually clean environment. The focus is on simplicity, with essential functionalities implemented for a smooth user experience.

Features:
1. Task Management:
- Users can add new tasks with a clear and intuitive text input field.
- Tasks are displayed in a list format for easy navigation.
- Tasks can be marked as completed or reverted to incomplete with a simple tap.
2. Current Task Highlight:
- The app displays a banner for the first unfinished task, encouraging users to focus on one task at a time.
- If all tasks are completed, a celebratory message appears.
3. Interactive List:
- Each task displays its title and a completion status icon (a checkmark for completed tasks and a circle for pending tasks).
- Users can delete tasks by swiping them in the list view.
- Completed tasks are visually distinguished with strikethrough text and a grayed-out appearance.
4. Responsive Design:
- Built with SwiftUI, the app adapts dynamically to different screen sizes, ensuring a consistent experience on both iPhone and iPad.
- Uses modern UI components like HStack, VStack, and List for an organized and aesthetically pleasing layout.


Technical Implementation:
1. Architecture:
- The app follows the MVVM (Model-View-ViewModel) design pattern.
- The TaskListViewModel acts as the central state manager, responsible for managing task-related operations.
- The Task struct represents individual tasks, including their title, completion status, and unique ID.
2. State Management:
- Utilizes @Published and @StateObject to manage the list of tasks and trigger UI updates when changes occur.
- Leverages Binding to synchronize input fields and toggle task completion in real-time.
3. Task Interaction:
- Tasks are stored in an array in TaskListViewModel.
- Functions like addTask(title:), removeTask(at:), and toggleTaskCompletion(task:) provide a clean API for modifying tasks.
4. Dynamic Task Display:
- The currentTask() function highlights the first unfinished task, helping users stay organized.
5. Reusable Components:
- The TaskRowView component provides a modular way to render individual tasks, including their status and tap functionality.


Code Details:
1. Task Creation and Management:

New tasks are added via a TextField and an action button. Tasks are stored as an array of Task objects in the TaskListViewModel. The addTask() function appends new tasks to the array, and the @Published property ensures the UI updates immediately.

2. Toggle Task Completion:

Task status is updated through the toggleTaskCompletion() function. This modifies the isCompleted property of the task and dynamically updates the UI, reflecting changes with animations.

3. Delete Functionality:

Tasks can be deleted with a swipe action using the .onDelete modifier, which calls removeTask(at:) in the TaskListViewModel.

4. Highlight Current Task:

The currentTask() function filters the task list to find the first incomplete task, which is displayed at the top of the screen for quick reference.

5. UI Design:

The interface is built using SwiftUI's declarative syntax, ensuring a clean and responsive layout. Key components include:

- NavigationView for navigation and title display.
- TextField for task input with a styled border.
- List for rendering tasks, supporting swipe-to-delete actions.


Usage:
1. Open the app to see a list of tasks.
2. Add tasks by entering a title in the input field and tapping the "+" button.
3. Mark tasks as completed by tapping the circle icon.
4. Delete tasks by swiping them in the list.


This app is perfect for individuals looking for a simple, no-frills task manager that promotes focus and productivity.
