//
//  Task.swift
//  Photo Scavenger Hunt
//
//  Created by Núria Pérez Casas on 3/16/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Finish building project 4 from the codepath app course📱",
                 description: "Make sure that the app has a list of tasks that can be edited and user can add a picture to complete the task."),
            Task(title: "Read a book for 20 minutes 📚",
                 description: "Take a picture of the book you have read."),
            Task(title: "Grab some coffee from a new local coffee shop ☕",
                 description: "Add a picture of the new coffee shop and the coffee you just got to complete the task."),
            Task(title: "Make a new friend 😎",
                 description: "Add a picture with your new friend.")
        ]
    }
}
