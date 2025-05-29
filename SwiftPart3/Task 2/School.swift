//
//  School.swift
//  SwiftPart3
//
//  Created by Vika on 29.05.25.
//

import Foundation

struct School {
    enum SchoolRole {
        case student
        case teacher
        case administrator
    }
    
    class Person {
        let name: String
        let role: SchoolRole
        init(name: String, role: SchoolRole) {
            self.name = name
            self.role = role
        }
    }
    
    private var people: [Person] = []

    mutating func addPerson(_ person: Person) {
        people.append(person)
    }
    
    subscript(role: SchoolRole) -> [Person] {
        return people.filter { $0.role == role }
    }
    
    func countStudents() -> Int {
        return self[.student].count
    }
    func countTeachers() -> Int {
        return self[.teacher].count
    }
    func countAdministrators() -> Int {
        return self[.administrator].count
    }
}
