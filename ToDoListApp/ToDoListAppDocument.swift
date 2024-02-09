//
//  ToDoListAppDocument.swift
//  ToDoListApp
//
//  Created by Dawid Nowacki on 05/12/2023.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var text: String
    var isCompleted = false
}

class TaskManager: ObservableObject {
    @Published var tasks: [Task] = []

    func addTask(_ task: Task) {
        tasks.append(task)
    }

    func removeTask(at index: IndexSet) {
        tasks.remove(atOffsets: index)
    }

    // Dodaj inne funkcje zarządzające zadaniami, takie jak odznaczanie/zaznaczanie jako ukończone itp.
}
