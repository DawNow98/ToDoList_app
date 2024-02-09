//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Dawid Nowacki on 05/12/2023.
//

import SwiftUI

@main
struct ToDoListAppApp: App {
    
    private var taskManager = TaskManager()
    
    var body: some Scene {
        WindowGroup {
            TaskListView(taskManager: taskManager)
        }
    }
}
