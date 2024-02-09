//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Dawid Nowacki on 05/12/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskManager: TaskManager

    var body: some View {
        TaskListView(taskManager: taskManager)
    }
}

struct TaskListView: View {
    @ObservedObject var taskManager: TaskManager

    var body: some View {
        NavigationView {
            List {
                ForEach(taskManager.tasks) { task in
                    TaskRowView(task: task)
                }
                .onDelete(perform: taskManager.removeTask)
            }
            .navigationTitle("To-Do List")
            .navigationBarItems(trailing: NavigationLink(destination: TaskAddView(taskManager: taskManager)) {
                Image(systemName: "plus")
            })
        }
    }
}

struct TaskRowView: View {
    var task: Task

    var body: some View {
        HStack {
            Text(task.text)
            Spacer()
            if task.isCompleted {
                Image(systemName: "checkmark")
            }
        }
    }
}

struct TaskAddView: View {
    @ObservedObject var taskManager: TaskManager
    @State private var newTaskText = ""

    var body: some View {
        VStack {
            TextField("New Task", text: $newTaskText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Add Task") {
                if !newTaskText.isEmpty {
                    taskManager.addTask(Task(text: newTaskText))
                    newTaskText = ""
                }
            }
            .padding()
        }
        .navigationTitle("Add Task")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskManager: TaskManager())
    }
}
